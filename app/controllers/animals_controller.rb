# module Api
#   module V1
class AnimalsController < ApplicationController
  def index
    if authorize_token
      @animals = Animal.all
      json_response(@animals)
    else
      json_response({:message => "Use a token for access"})
    end
  end

  def show
    if authorize_token
      @animal = Animal.find(params[:id])
      json_response(@animal)
    else
      json_response({:message => "Use a token for access"})

    end
  end

  def create
    if authorize_token
      @animal = Animal.create!(animal_params)
      json_response(@animal, :created)
    else
      json_response({:message => "Use a token for access"})
    end
  end

  def update
    if authorize_token
      if @animal.update!(animal_params)
        render status: 200, json: {
          message: "Your animal has been updated successfully."
        }
      else
        json_response({:message => "Use a token for access"})
      end
    end
  end

  def destroy
    if authorize_token
      @animal = Animal.find(params[:id])
      @animal.destroy
    else
      json_response({:message => "Use a token for access"})
    end
  end

  def random
    if authorize_token
      @animal = Animal.random
      json_response(@animal)

    else
      json_response({:message => "Use a token for access"})
    end
  end

  def species
    if authorize_token
      species = params[:species]
      @animals = Animal.search_by_species(species)
      json_response(@animals)
    else
      json_response({:message => "Use a token for access"})
    end
  end



  def authorize_token
    binding.pry
    if request.headers["HTTP_AUTHORIZATION"] && Token.find_by_token_hash(request.headers["HTTP_AUTHORIZATION"])
      true
    else
      false
    end
  end

  def animal_params
    params.permit(:name, :species, :shelter)
  end
end
#   end
# end

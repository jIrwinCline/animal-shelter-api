class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    if @animal.update!(animal_params)
      render status: 200, json: {
      message: "Your animal has been updated successfully."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def animal_params
    params.permit(:name, :species, :shelter)
  end
end

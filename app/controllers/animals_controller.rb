class AnimalsController < ApplicationController
  def index
    @animal = {"animal": "Doggo"}
    json_response(@animal)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end

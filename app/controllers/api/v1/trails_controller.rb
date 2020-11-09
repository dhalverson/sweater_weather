class Api::V1::TrailsController < ApplicationController
  def index
    location = params[:location]
    coordinates = LocationService.get_coordinates(location)
    facade = HikingFacade.new(coordinates)
    

    render json: facade
  end
end
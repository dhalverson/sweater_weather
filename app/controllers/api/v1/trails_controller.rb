class Api::V1::TrailsController < ApplicationController
  def index
    location = params[:location]
    coordinates = LocationService.get_coordinates(location)
    trails = HikingService.get_trails(coordinates)

    forecast = ForecastService.get_forecast(coordinates)[:current]


    render json: trails
  end
end
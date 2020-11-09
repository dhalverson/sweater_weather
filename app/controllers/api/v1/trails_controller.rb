class Api::V1::TrailsController < ApplicationController
  def index
    location = params[:location]
    coordinates = LocationService.get_coordinates(location)
    
    attr = {
      location: location,
      trail_info: HikingService.get_trails(coordinates),
      forecast_info: ForecastService.get_forecast(coordinates)[:current]
    }
    
    result = Trail.new(attr)


    render json: trails
  end
end
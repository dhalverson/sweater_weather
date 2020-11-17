class Api::V1::ForecastController < ApplicationController
  def show
    if params.has_key?(:location)
      render json: ForecastSerializer.new(ForecastFacade.total_forecast(params[:location]))
    else
      render json: { errors: 'Please enter a valid city and state!', status: 404 }
    end
  end
end

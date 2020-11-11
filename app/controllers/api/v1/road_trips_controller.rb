class Api::V1::RoadTripsController < ApplicationController
  def create
    origin = params[:origin]
    destination = params[:destination]
    api_key = params[:api_key]
    user = User.find_by(api_key: api_key)
    if user
      render json: RoadTripSerializer.new(RoadTripFacade.create_road_trip(origin, destination)), status: 200
    else
      render json: user.errors.full_messages.to_sentence, status: 401
    end
  end
end

class Api::V1::RoadTripsController < ApplicationController
  def create
    origin
    destination
    api_key
    user = User.find_by(api_key: params[:api_key])
  end
end


  #   user = User.create(user_params)
  #   if user.save
  #     render json: UsersSerializer.new(user), status: 201
  #   else
  #     render json: user.errors.full_messages.to_sentence, status: 401
  #   end
  # end
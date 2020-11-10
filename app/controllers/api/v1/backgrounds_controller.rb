class Api::V1::BackgroundsController < ApplicationController
  def show
    city = params[:location]
    render json: BackgroundsSerializer.new(BackgroundsFacade.get_image(city))
  end
end
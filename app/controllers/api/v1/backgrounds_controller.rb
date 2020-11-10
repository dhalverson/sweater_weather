class Api::V1::BackgroundsController < ApplicationController
  def show
    city = params[:location]
    image_facade = BackgroundsFacade.get_image(city)
    render json: BackgroundsSerializer.new(image_facade)
  end
end
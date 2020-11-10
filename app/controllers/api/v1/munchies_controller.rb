class Api::V1::MunchiesController < ApplicationController
  def show
    starting = params[:start]
    ending = params[:end]
    cuisine = params[:cuisine]
    render json: MunchiesSerializer.new(MunchiesFacade.new(starting, ending, cuisine))
  end
end
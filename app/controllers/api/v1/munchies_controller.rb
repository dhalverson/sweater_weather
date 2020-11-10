class Api::V1::MunchiesController < ApplicationController
  def show
    render json: MunchiesSerializer.new(MunchiesFacade.new)
  end
end
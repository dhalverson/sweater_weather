class Api::V1::BackgroundsController < ApplicationController
  def index
    city = params[:location]
    conn = Faraday.new('https://api.unsplash.com')
    response = conn.get('/search/photos') do |req|
      req.params['client_id'] = ENV['UNSPLASH_KEY']
      req.params['query'] = city
    end
    image = JSON.parse(response.body, symbolize_names: true)
    render json: image
    require 'pry'; binding.pry
  end
end
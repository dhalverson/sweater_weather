class Api::V1::ForecastController < ApplicationController
  def show
    conn = Faraday.new('https://api.openweathermap.org')
    response = conn.get('/data/2.5/onecall') do |req|
      req.params['appid'] = ENV['WEATHER_API_KEY']
      req.params['lat'] = 39.7392
      req.params['lon'] = -104.9903
      req.params['exclude'] = 'minutely,alerts'
    end
    data = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry
  end
end



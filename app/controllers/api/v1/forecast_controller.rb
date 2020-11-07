class Api::V1::ForecastController < ApplicationController
  def show
    forecast = ForecastFacade.get_forecast(params[:location])
    render json: ForecastSerializer.new(forecast)
    # conn = Faraday.new('http://www.mapquestapi.com')
    # response = conn.get('/geocoding/v1/address') do |req|
    #   req.params['key'] = ENV['MAP_API_KEY']
    #   req.params['location'] = params[:location]
    # end
    # city_coordinates = JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:latLng]

    # conn = Faraday.new('https://api.openweathermap.org')
    # response = conn.get('/data/2.5/onecall') do |req|
    #   req.params['appid'] = ENV['WEATHER_API_KEY']
    #   req.params['lat'] = "#{city_coordinates[:lat]}"
    #   req.params['lon'] = "#{city_coordinates[:lng]}"
    #   req.params['exclude'] = 'minutely,alerts'
    #   req.params['units'] = 'imperial'
    # end
    # data = JSON.parse(response.body, symbolize_names: true)

    # render json: data
  end
end



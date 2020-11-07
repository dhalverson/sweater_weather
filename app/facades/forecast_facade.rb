class ForecastFacade
  def self.get_forecast(location)
    # conn = Faraday.new('http://www.mapquestapi.com')
    # response = conn.get('/geocoding/v1/address') do |req|
    #   req.params['key'] = ENV['MAP_API_KEY']
    #   req.params['location'] = location
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

    coordinates = LocationService.get_coordinates(location)
    json = ForecastService.get_forecast(coordinates)

    forecast = json
    require 'pry'; binding.pry
    
  end

  private

  # def self.location_details(location)
  #   location_details = LocationService.get_coordinates(location)

  # end

  # def self.forecast_details(location)
  #   forecast_details = ForecastService.get_forecast(location)
  #   Forecast.new(forecast_details)
  # end



  # def location_service(location)
  #   LocationService.get_coordinates(location)
  # end
  
end
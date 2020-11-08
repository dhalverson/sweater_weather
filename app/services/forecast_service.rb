class ForecastService
  def self.get_forecast(city_coordinates)
    conn = Faraday.new('https://api.openweathermap.org')
    response = conn.get('/data/2.5/onecall') do |req|
      req.params['appid'] = ENV['WEATHER_API_KEY']
      req.params['lat'] = "#{city_coordinates[:lat]}"
      req.params['lon'] = "#{city_coordinates[:lng]}"
      req.params['exclude'] = 'minutely,alerts'
      req.params['units'] = 'imperial'
    end
    JSON.parse(response.body, symbolize_names: true) 
  end
end
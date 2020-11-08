class ForecastFacade
  def self.total_forecast(location)
    coordinates = LocationService.get_coordinates(location)
    json = ForecastService.get_forecast(coordinates)
    Forecast.new(json)
  end
end

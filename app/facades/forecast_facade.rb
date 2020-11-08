class ForecastFacade
  def self.total_forecast(location)
    coordinates = LocationService.get_coordinates(location)
    json = ForecastService.get_forecast(coordinates)
    Forecast.new(json)
  end

  private_class_method

  # def self.forecast(location)
  #   data = {
  #     current_forecast: current_forecast(location)
  #     # hourly_forecast: hourly_forecast(location)
  #     # daily_forecast: daily_forecast(location)
  #   }
  #   Forecast.new(data)
  # end

  # def self.current_forecast(location)
  #   coordinates = LocationService.get_coordinates(location)
  #   current_json = ForecastService.get_forecast(coordinates)
  #   data = current_json[:current]
  #   # data = {
  #   #   dt:  current_json[:current][:dt],
  #   #   sunrise:  current_json[:current][:sunrise],
  #   #   sunset: current_json[:current][:sunset],
  #   #   temp: current_json[:current][:temp],
  #   #   feels_like: current_json[:current][:feels_like],
  #   #   humidity: current_json[:current][:humidity],
  #   #   uvi: current_json[:current][:uvi],
  #   #   visibility: current_json[:current][:visibility],
  #   #   description: current_json[:current][:weather][0][:description],
  #   #   icon: current_json[:current][:weather][0][:icon]
  #   # }
  #   CurrentForecast.new(data)
  # end

  # def self.hourly_forecast(location)
  #   coordinates = LocationService.get_coordinates(location)
  #   hourly_json = ForecastService.get_forecast(coordinates)
  #   hourly_json[:hourly_forecast][0..7].map do |hour|
  #     data = {
  #       time: hour[:dt],
  #       wind_speed: hour[:wind_speed],
  #       wind_direction: hour[:wind_deg],
  #       conditions: hour[:weather][0][:description],
  #       icon: hour[:weather][0][:icon]
  #     }
  #   end
  #   HourlyForecast.new(data)
  # end

  # def self.daily_forecast(location)
    # coordinates = LocationService.get_coordinates(location)
    # daily_json = ForecastService.get_forecast(coordinates)
    # data = daily_json[:]
  #   daily_json[:daily][0..4].map do |day|
  #     data = {
  #       date: day[:dt],
  #       sunrise: day[:sunrise],
  #       sunset: day[:sunset],
  #       max_temp: day[:temp][:max],
  #       min_temp: day[:temp][:mix],
  #       conditions: day[:weather][0][:description],
  #       icon: day[:weather][0][:icon]
  #     }
  #   end
  #   DailyForecast.new(data)
  # end
end
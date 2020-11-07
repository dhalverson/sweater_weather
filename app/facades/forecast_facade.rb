class ForecastFacade
  def initialize
    @coordinates = LocationService.get_coordinates(location)
  end

  def self.total_forecast(location)
    forecast(location)
    require 'pry'; binding.pry
  end

  private_class_method

  def self.forecast(location)
    data = {
      current_forecast: current_forecast(location),
      daily_forecast: daily_forecast(location),
      hourly_forecast: hourly_forecast(location)
    }
  end

  def self.current_forecast(location)
    json = ForecastService.get_forecast(@coordinates)
    current = json[:current]
    data = {
      dt:  current[:dt],
      sunrise:  current[:sunrise],
      sunset: current[:sunset],
      temp: current[:temp],
      feels_like: current[:feels_like],
      humidity: current[:humidity],
      uvi: current[:uvi],
      visibility: current[:visibility],
      description: current[:weather][0][:description],
      icon: current[:weather][0][:icon]
    }
    CurrentForecast.new(data)
  end

  def self.daily_forecast(location)
    json = ForecastService.get_forecast(@coordinates)
    json[:daily_forecast][0..4].map do |day|
      data = {
        date: day[:dt],
        sunrise: day[:sunrise],
        sunset: day[:sunset],
        max_temp: day[:temp][:max],
        min_temp: day[:temp[:mix]],
        conditions: day[:weather][0][:description],
        icon: day[:weather][0][:icon]
      }
    end
    DailyForecast.new(data)
  end

  def self.hourly_forecast(location)
    coordinates = LocationService.get_coordinates(location)
    json = ForecastService.get_forecast(coordinates)
    json[:hourly_forecast][0..7].map do |hour|
      data = {
        time: hour[:dt],
        wind_speed: hour[:wind_speed],
        wind_direction: hour[:wind_deg],
        conditions: hour[:weather][0][:description],
        icon: hour[:weather][0][:icon]
      }
    end
    HourlyForecast.new(data)
  end
end
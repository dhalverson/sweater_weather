class Forecast
  attr_reader :current_weather,
              :hourly_weather,
              :daily_weather

  def initialize(attr)
    @current_weather = current_forecast(attr[:current])
    @hourly_weather = hourly_forecast(attr[:hourly])
    @daily_weather = daily_forecast(attr[:daily])
  end

  private_class_method

  def current_forecast(current_data)
    CurrentForecast.new(current_data)
  end

  def hourly_forecast(hourly_data)
    hourly_data[0..7].map do |hour|
      HourlyForecast.new(hour)
    end
  end

  def daily_forecast(daily_data)
    daily_data[0..4].map do |day|
      DailyForecast.new(day)
    end
  end
end

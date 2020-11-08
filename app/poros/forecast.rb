class Forecast

  def initialize(attr)
    @current = current_forecast(attr[:current])
    @hourly = hourly_forecast(attr[:hourly])
    @daily = daily_forecast(attr[:daily])
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
end

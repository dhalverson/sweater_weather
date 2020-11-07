class Forecast
  attr_reader :current_forecast,
              :hourly_forecast
  def initialize(attr)
    @current_forecast = attr[:current_forecast]
    @hourly_forecast = attr[:hourly_forecast]
  end
end
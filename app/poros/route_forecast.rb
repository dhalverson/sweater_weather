class RouteForecast
  attr_reader :summary,
              :temperature
  def initialize(attr)
    @summary = attr[:current][:weather][0][:description].titleize
    @temperature = attr[:current][:temp].to_s
  end
end
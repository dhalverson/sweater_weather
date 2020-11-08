class HourlyForecast
  attr_reader :time,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon
  def initialize(attr)
    @time = Time.at(attr[:dt]).strftime('%H:%M:%S %Z')
    @wind_speed = attr[:wind_speed]
    @wind_direction = attr[:wind_deg]
    @conditions = attr[:weather][0][:description]
    @icon = attr[:weather][0][:icon]
  end
end
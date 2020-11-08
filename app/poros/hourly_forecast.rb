class HourlyForecast
  attr_reader :time,
              :temp,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon
              
  def initialize(attr)
    @time = Time.at(attr[:dt]).strftime('%H:%M:%S %Z')
    @temp = attr[:temp]
    @wind_speed = attr[:wind_speed]
    @wind_direction = cardinal_direction(attr[:wind_deg])
    @conditions = attr[:weather][0][:description]
    @icon = attr[:weather][0][:icon]
  end

  def cardinal_direction(degree)
    return ["N","NNE","NE","ENE","E","ESE", "SE", "SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"][(degree/22.5)%16]
  end
end

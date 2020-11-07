class Forecast
  attr_reader :dt,
              :sunrise,
              :sunset,
              :temp,
              :feels_like,
              :humidity,
              :uvi,
              :visibility,
              :description,
              :icon
  def initialize(attr)
    @dt = Time.at(attr[:current][:dt]).strftime('%m/%d/%Y %H:%M %Z')
    @sunrise = Time.at(attr[:current][:sunrise]).strftime('%m/%d/%Y %H:%M %Z')   
    @sunset = Time.at(attr[:current][:sunset]).strftime('%m/%d/%Y %H:%M %Z')   
    @temp = attr[:current][:temp]   
    @feels_like = attr[:current][:feels_like]   
    @humidity = attr[:current][:humidity]   
    @uvi = attr[:current][:uvi]   
    @visibility = attr[:current][:visibility]   
    @description = attr[:current][:weather][0][:description]
    @icon = attr[:current][:weather][0][:icon]

    @date = Time.at(attr[:dt]).strftime('%m/%d/%Y')

    # @time = Time.at(attr[:hourly][:dt])
    # @wind_speed = attr[:hourly][:wind_speed]
    # @wind_direction = attr[:hourly][:wind_deg]
    # @conditions = attr[:hourly][:weather][0][:description]
    # @icon = attr[:hourly][:weather][0][:icon]
  end
end
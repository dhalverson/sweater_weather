class Forecast
  def initialize(attr)
    @dt = Time.at(attr[:dt]).strftime('%m/%d/%Y %H:%M %Z')
    @sunrise = Time.at(attr[:sunrise]).strftime('%m/%d/%Y %H:%M %Z')   
    @sunset = Time.at(attr[:sunset]).strftime('%m/%d/%Y %H:%M %Z')   
    @temp = attr[:temp]   
    @feels_like = attr[:feels_like]   
    @humidity = attr[:humidity]   
    @uvi = attr[:uvi]   
    @visibility = attr[:visibility]   
    @description = attr[:weather[:description]]   
    @icon = attr[:weather[:icon]]   
  end
end
class DailyForecast
  attr_reader :date,
              :sunrise,
              :sunset,
              :max_temp,
              :min_temp,
              :conditions,
              :icon
  def initialize(attr)
    @date = Time.at(attr[:dt]).strftime('%m/%d/%Y')
    @sunrise = Time.at(attr[:sunrise]).strftime('%m/%d/%Y %H:%M %Z')
    @sunset = Time.at(attr[:sunset]).strftime('%m/%d/%Y %H:%M %Z')
    @max_temp = attr[:temp][:max]
    @min_temp = attr[:temp][:min]
    @conditions = attr[:weather][0][:description]
    @icon = attr[:weather][0][:icon]
  end
end
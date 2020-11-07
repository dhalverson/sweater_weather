class CurrentForecast
  def initialize(attr)
    require 'pry'; binding.pry
    @dt = attr[:dt],
    @sunrise = attr[:sunrise],
    @sunset = attr[:sunset],
    @temp = attr[:temp],
    @feels_like = attr[:feels_like],
    @humidity = attr[:humidity],
    @uvi = attr[:uvi],
    @visibility = attr[:visibility],
    @description = attr[:weather][0][:description],
    @icon = attr[:weather][0][:icon]
  end
end
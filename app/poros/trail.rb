class Trail
  attr_reader :location,
              :forecast,
              :trail_info,
              :trail_distance
  def initialize(attr)
    @location = attr[:location]
    @forecast = forecast_summary(attr[:forecast_info])
    @trail_info = trail_summary(attr[:trail_info])
    @trail_distance = distance_calculator
  end

  def distance_calculator(@location, @trail_info)
    

  end
end
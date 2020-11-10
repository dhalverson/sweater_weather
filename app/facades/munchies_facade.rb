class MunchiesFacade
  attr_reader :destination_city,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(starting, ending, cuisine)
    @destination_city = ending.titleize
    @travel_time = route_travel_time(starting, ending)
    @forecast = "forecast"
    @restaurant = "restaurant"
  end

  def route_travel_time(starting, ending)
    travel_time = LocationService.get_travel_time(starting, ending)
  end
    
 
end
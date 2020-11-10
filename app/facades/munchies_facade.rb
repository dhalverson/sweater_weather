class MunchiesFacade
  attr_reader :destination_city,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(starting, ending, cuisine)
    @destination_city = ending.titleize
    @travel_time = route_travel_time(starting, ending)
    @forecast = route_forecast(ending)
    @restaurant = "restaurant"
  end

  def route_travel_time(starting, ending)
    travel_time = LocationService.get_travel_time(starting, ending)
    travel_time[:route][:formattedTime]
  end
    
  def route_forecast(ending)
    coordinates = LocationService.get_coordinates(ending)
    ending_forecast = ForecastService.get_forecast(coordinates)
    ending_forecast[:current][:weather][0][:description].titleize
  end 
end
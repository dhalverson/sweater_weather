class MunchiesFacade
  attr_reader :destination_city,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(starting, ending, cuisine)
    @destination_city = ending.titleize
    @travel_time = route_travel_time(starting, ending)
    @forecast = route_forecast(ending)
    @restaurant = route_restaurant(ending, cuisine)
  end

  def route_travel_time(starting, ending)
    travel_time = LocationService.get_travel_time(starting, ending)
    travel_time[:route][:formattedTime]
  end
    
  def route_forecast(ending)
    coordinates = LocationService.get_coordinates(ending)
    ending_forecast = ForecastService.get_forecast(coordinates)
    data = {
     summary: ending_forecast[:current][:weather][0][:description].titleize,
     temperature: ending_forecast[:current][:temp].to_s
    }
  end 

  def route_restaurant(ending, cuisine)
    time = Time.now.to_i + @travel_time.to_i
    restaurant = RestaurantService.get_restaurants(ending, time, cuisine)
    data ={
      name: restaurant[:businesses][0][:name],
      address: restaurant[:businesses][0][:location][:display_address].join(', ')
    }
  end
end
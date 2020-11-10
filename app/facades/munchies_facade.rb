class MunchiesFacade
  attr_reader :destination_city,
              :travel_time,
              :forecast,
              :restaurant

  def initialize(starting, ending, cuisine)
    @destination_city = ending
    @travel_time = "time"
    @forecast = "forecast"
    @restaurant = "restaurant"
  end
end
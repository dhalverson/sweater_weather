class RoadTripFacade
  def self.get_travel_time(origin, destination)
    road_trip = LocationService.get_distance(origin, destination)
    road_trip[:route][:realTime]
  end

  def self.get_destination_forecast(destination)
    coordinates = LocationService.get_coordinates(destination)
    forecast = ForecastService.get_forecast(coordinates)
  end

  def self.create_road_trip(origin, destination)
    travel_time_hours = (((RoadTripFacade.get_travel_time(origin, destination).to_f / 60) / 60).round + 1)
    data = {
      start_city: origin,
      end_city: destination,
      travel_time: Time.at(RoadTripFacade.get_travel_time(origin, destination)).utc.strftime("%H:%M"),
      weather_at_eta: {
        temperature: RoadTripFacade.get_destination_forecast(destination)[:hourly][travel_time_hours][:temp],
        conditions: RoadTripFacade.get_destination_forecast(destination)[:hourly][travel_time_hours][:weather][0][:description]
      }
    }
    RoadTrip.new(data)
  end
end


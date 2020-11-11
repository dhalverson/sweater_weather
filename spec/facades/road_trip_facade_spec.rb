require 'rails_helper'

RSpec.describe 'Road Trip Facade' do
  it 'Roadtrip', :vcr do
    origin = 'Denver,CO'
    destination = 'Pueblo,CO'

    trip = RoadTripFacade.create_road_trip(origin, destination)

    expect(trip).to be_a(RoadTrip)

    expect(trip.start_city).to eq('Denver,CO')
    expect(trip.end_city).to eq('Pueblo,CO')
    expect(trip.travel_time).to eq('01:49')
    expect(trip.weather_at_eta[:temperature]).to eq(34.2)
    expect(trip.weather_at_eta[:conditions]).to eq('clear sky')
  end
end
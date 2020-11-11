require 'rails_helper'

RSpec.describe 'Road Trip Facade' do
  it 'Roadtrip' do
    origin = 'Denver,CO'
    destination = 'Pueblo,CO'

    road_trip = RoadTripFacade.create_road_trip(origin, destination)
  end
end
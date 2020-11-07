require 'rails_helper'

RSpec.describe 'Location Service' do
  it 'returns coordinates based on a city and state' do
    location = denver,co

    result = LocationService.get_coordinates(location)

    expect(result).to be_a(Hash)
  end
end
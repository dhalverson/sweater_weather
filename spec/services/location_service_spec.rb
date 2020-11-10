require 'rails_helper'

RSpec.describe 'Location Service' do
  it 'returns coordinates based on a city and state' do
    location = 'denver,co'
    result = LocationService.get_coordinates(location)

    expect(result).to be_a(Hash)
    expect(result).to have_key :lat
    expect(result[:lat]).to be_a(Float)
    expect(result).to have_key :lng
    expect(result[:lng]).to be_a(Float)

    expect(result.keys.count).to eq(2)
    expect(result.values.count).to eq(2)
  end

  it 'returns travel time when given a start and end' do
    starting = 'denver,co'
    ending = 'pueblo,co'
    result = LocationService.get_travel_time(starting, ending)

    expect(result).to be_a(Hash)
    expect(result[:route]).to be_a(Hash)
    expect(result[:route]).to have_key :formattedTime
    expect(result[:route][:formattedTime]).to be_a(String)
    # Unsure if to include exact time here, in case the algorithm to calculate time changes ever
  end
end
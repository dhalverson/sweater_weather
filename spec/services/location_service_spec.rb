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
    origin = 'denver,co'
    destination = 'pueblo,co'
    result = LocationService.get_distance(origin, destination)

    expect(result).to be_a(Hash)

    expect(result).to have_key :route
    expect(result[:route]).to have_key :hasTollRoad
    expect(result[:route]).to have_key :hasBridge
    expect(result[:route]).to have_key :boundingBox
    expect(result[:route]).to have_key :distance
    expect(result[:route]).to have_key :hasTimedRestriction
    expect(result[:route]).to have_key :hasTunnel
    expect(result[:route]).to have_key :hasHighway
    expect(result[:route]).to have_key :computedWaypoints
    expect(result[:route]).to have_key :routeError
    expect(result[:route]).to have_key :formattedTime
    expect(result[:route]).to have_key :sessionId
    expect(result[:route]).to have_key :hasAccessRestriction
    expect(result[:route]).to have_key :realTime
    expect(result[:route]).to have_key :hasSeasonalClosure
    expect(result[:route]).to have_key :hasCountryCross
    expect(result[:route]).to have_key :fuelUsed
    expect(result[:route]).to have_key :legs
  end
end
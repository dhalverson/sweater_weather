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
end
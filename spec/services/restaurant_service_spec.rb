require 'rails_helper'

RSpec.describe 'Yelp Service' do
  it 'Returns business information when given' do
    ending = 'pueblo,co'
    time = 1605033981
    cuisine = 'chinese'

    result = RestaurantService.get_restaurants(ending, time, cuisine)

    expect(result).to be_a(Hash)

    expect(result).to have_key :businesses
    expect(result[:businesses][0]).to have_key :id
    expect(result[:businesses][0]).to have_key :alias
    expect(result[:businesses][0]).to have_key :name
    expect(result[:businesses][0][:name]).to be_a(String)
    expect(result[:businesses][0][:location]).to have_key :display_address
    expect(result[:businesses][0][:location][:display_address]).to be_an(Array)
    # ran out of time to add all fields here
  end
end
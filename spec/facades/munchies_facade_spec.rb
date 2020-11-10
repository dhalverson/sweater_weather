require 'rails_helper'

RSpec.describe 'Munchies Facade' do
  it 'Munchies search' do
    starting = 'denver,co'
    ending = 'pueblo,co'
    cuisine = 'chinese'

    munchie = MunchiesFacade.new(starting, ending, cuisine)
    require 'pry'; binding.pry
  
    expect(munchie.destination_city).to eq('Pueblo,Co')
    expect(munchie.travel_time).to eq('01:43:57')
    expect(munchie.forecast).to eq('Clear Sky')
    expect(munchie.restaurant).to eq('String')
   end
end
require 'rails_helper'

RSpec.describe 'Munchies Facade' do
  it 'Munchies search' do
    starting = 'denver,co'
    ending = 'pueblo,co'
    cuisine = 'chinese'

    munchie = MunchiesFacade.new(starting, ending, cuisine)
  
    expect(munchie.destination_city).to be_a(String)
    expect(munchie.travel_time).to be_a(String)
    expect(munchie.forecast[:summary]).to be_a(String)
    expect(munchie.forecast[:temperature]).to be_a(String)
    expect(munchie.restaurant[:name]).to be_a(String)
    # needed more time to make VCR, would then also update these tests to actual values
   end
end
require 'rails_helper'

RSpec.describe 'Retrieve Hiking' do
  it 'can get hiking trails when given a city and state' do
    get '/api/v1/trails?location=denver,co'

    expect(response).to be_successful
    trails = JSON.parse(response.body, symbolize_names: true)

    expect(trails).to have_key :trails
    expect(trails[:trails]).to be_an(Array)

    trails = trails[:trails][0]
    expect(trails).to have_key :id
    expect(trails).to have_key :name
    expect(trails).to have_key :summary
    expect(trails).to have_key :difficulty
    expect(trails).to have_key :location

    expect(trails[:id]).to be_an(Integer)
    expect(trails[:name]).to be_a(String)
    expect(trails[:summary]).to be_a(String)
    expect(trails[:difficulty]).to be_a(String)
    expect(trails[:location]).to be_a(String)
  end
end
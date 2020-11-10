require 'rails_helper'

RSpec.describe 'Retrieve businesses' do
  it 'retrieves a business when given start, end, and cuisine' do
    get '/api/v1/munchies?start=denver,co&end=pueblo,co&food=chinese'

    expect(response).to be_successful
    business = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry
    expect(business).to be_a(Hash)
    expect(business).to have_key :data
    expect(business[:data]).to be_a(Hash)
    
    expect(business[:data]).to have_key :id
    expect(business[:data]).to have_key :type
    expect(business[:data]).to have_key :attributes

    expect(business[:data][:type]).to be_a(String)
    expect(business[:data][:type]).to eq('munchie')

    expect(business[:data][:attributes][:destination_city]).to be_a(String)
    expect(business[:data][:attributes][:travel_time]).to be_a(String)
    expect(business[:data][:attributes][:forecast]).to be_a(Hash)
    expect(business[:data][:attributes][:forecast][:summary]).to be_a(String)
    expect(business[:data][:attributes][:forecast][:temperature]).to be_a(String)
    expect(business[:data][:attributes][:restaurant]).to be_a(Hash)
    expect(business[:data][:attributes][:restaurant][:name]).to be_a(String)
    expect(business[:data][:attributes][:restaurant][:address]).to be_a(String)
  end
end
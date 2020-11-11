require 'rails_helper'

RSpec.describe 'Road Trip' do
  it 'Sends road trip information including start, end, travel time, and weather' do
    user = User.create!(
      email: 'whatever@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
    
    body = {
      "origin": "Denver,CO",
      "destination": "Pueblo,CO",
      "api_key": user.api_key
    }

    post '/api/v1/road_trip', params: body

    expect(response).to be_successful
    expect(response.status).to eq(200)

    road_trip = JSON.parse(response.body, symbolize_names: true)

    expect(road_trip).to be_a(Hash)

    expect(road_trip).to have_key :data
    expect(road_trip[:data]).to have_key :id
    expect(road_trip[:data]).to have_key :type
    expect(road_trip[:data]).to have_key :attributes

    expect(road_trip[:data][:type]).to be_a(String)
    expect(road_trip[:data][:type]).to eq('roadtrip')
    expect(road_trip[:data][:attributes]).to be_a(Hash)
    expect(road_trip[:data][:attributes]).to have_key :start_city
    expect(road_trip[:data][:attributes][:start_city]).to be_a(String) 
    expect(road_trip[:data][:attributes]).to have_key :end_city
    expect(road_trip[:data][:attributes][:end_city]).to be_a(String)
    expect(road_trip[:data][:attributes]).to have_key :travel_time
    expect(road_trip[:data][:attributes][:travel_time]).to be_a(String)
    expect(road_trip[:data][:attributes]).to have_key :weather_at_eta
    expect(road_trip[:data][:attributes][:weather_at_eta]).to be_a(Hash)
    expect(road_trip[:data][:attributes][:weather_at_eta][:temperature]).to be_an(Float)
    expect(road_trip[:data][:attributes][:weather_at_eta][:conditions]).to be_a(String)
  end
end
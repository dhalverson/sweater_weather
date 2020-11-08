require 'rails_helper'

RSpec.describe 'Retrieve weather' do
  it 'retrieves current weather for a city' do
    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful
    forecast = JSON.parse(response.body, symbolize_names: true)
    
    expect(forecast[:data]).to have_key :id    
    expect(forecast[:data]).to have_key :type    
    expect(forecast[:data]).to have_key :attributes  

    expect(forecast[:data][:attributes]).to have_key :current_weather
    expect(forecast[:data][:attributes]).to have_key :daily_weather
    expect(forecast[:data][:attributes]).to have_key :hourly_weather

    expect(forecast[:data][:attributes][:current_weather]).to be_a(Hash)
    expect(forecast[:data][:attributes][:daily_weather]).to be_an(Array) 
    expect(forecast[:data][:attributes][:hourly_weather]).to be_an(Array)

    expect
    
    
  end
end

# GET /api/v1/forecast?location=denver,co
# Content-Type: application/json
# Accept: application/json
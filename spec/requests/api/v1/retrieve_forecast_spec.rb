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
    expect(forecast[:data][:attributes][:daily_weather].count).to eq(5)
    expect(forecast[:data][:attributes][:hourly_weather]).to be_an(Array)
    expect(forecast[:data][:attributes][:hourly_weather].count).to eq(8)

    expect(forecast[:data][:attributes][:current_weather][:dt]).to be_a(String)
    expect(forecast[:data][:attributes][:current_weather][:sunrise]).to be_a(String)
    expect(forecast[:data][:attributes][:current_weather][:sunset]).to be_a(String)
    expect(forecast[:data][:attributes][:current_weather][:temp]).to be_a(Float)
    expect(forecast[:data][:attributes][:current_weather][:feels_like]).to be_a(Float)
    expect(forecast[:data][:attributes][:current_weather][:humidity]).to be_an(Integer)
    expect(forecast[:data][:attributes][:current_weather][:uvi]).to be_a(Float)
    expect(forecast[:data][:attributes][:current_weather][:visibility]).to be_an(Integer)
    expect(forecast[:data][:attributes][:current_weather][:description]).to be_a(String)
    expect(forecast[:data][:attributes][:current_weather][:icon]).to be_a(String)
    
    expect(forecast[:data][:attributes][:daily_weather][0][:date]).to be_a(String)
    expect(forecast[:data][:attributes][:daily_weather][0][:sunrise]).to be_a(String)
    expect(forecast[:data][:attributes][:daily_weather][0][:sunset]).to be_a(String)
    expect(forecast[:data][:attributes][:daily_weather][0][:max_temp]).to be_a(Float)
    expect(forecast[:data][:attributes][:daily_weather][0][:min_temp]).to be_a(Float)
    expect(forecast[:data][:attributes][:daily_weather][0][:conditions]).to be_a(String)
    expect(forecast[:data][:attributes][:daily_weather][0][:icon]).to be_a(String)

    expect(forecast[:data][:attributes][:hourly_weather][0][:time]).to be_a(String)
    expect(forecast[:data][:attributes][:hourly_weather][0][:wind_speed]).to be_a(Float)
    expect(forecast[:data][:attributes][:hourly_weather][0][:wind_direction]).to be_a(String)
    expect(forecast[:data][:attributes][:hourly_weather][0][:conditions]).to be_a(String)
    expect(forecast[:data][:attributes][:hourly_weather][0][:icon]).to be_a(String)
  end
end

# GET /api/v1/forecast?location=denver,co
# Content-Type: application/json
# Accept: application/json
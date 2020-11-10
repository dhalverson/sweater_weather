require 'rails_helper'

RSpec.describe 'Get background image for city' do
  it 'gets a background image showing the city' do
    get '/api/v1/backgrounds?location=denver,co'

    expect(response).to be_successful
    result = JSON.parse(response.body,symbolize_names: true)

    expect(result).to have_key :data

    expect(result[:data]).to have_key :id
    expect(result[:data]).to have_key :type
    expect(result[:data]).to have_key :attributes

    expect(result[:data][:type]).to be_a(String)
    expect(result[:data][:type]).to eq('image')
    expect(result[:data][:attributes]).to be_a(Hash)
    expect(result[:data][:attributes]).to have_key :location
    expect(result[:data][:attributes][:location]).to be_a(String)
    expect(result[:data][:attributes]).to have_key :image_url
    expect(result[:data][:attributes][:image_url]).to be_a(String)
    expect(result[:data][:attributes]).to have_key :credit
    expect(result[:data][:attributes][:credit]).to be_a(Hash)
    expect(result[:data][:attributes][:credit][:description]).to be_a(String)
    expect(result[:data][:attributes][:credit][:description]).to be_a(String)
  end
end
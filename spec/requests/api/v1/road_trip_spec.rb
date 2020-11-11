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
    expect(response.status).to eq(201)   
  end
end
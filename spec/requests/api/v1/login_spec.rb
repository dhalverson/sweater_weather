require 'rails_helper'

RSpec.describe 'User Login' do
  it 'allows a user to login' do
    body = {
      "email": "whatever@example.com",
      "password": "password"
    }
    
    post '/api/v1/sessions', params: body

    expect(response).to be_successful
    expect(response.status).to eq(201)

    login = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry
    expect(login).to be_a(Hash)


  end
end
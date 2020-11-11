require 'rails_helper'

RSpec.describe 'User Registration' do
  it 'allows a user to sign in' do
    body = {
      "email": "whatever@example.com",
      "password": "password",
      "password_confirmation": "password"
    }

    post '/api/v1/users', params: body

    expect(response).to be_successful
  
    user = JSON.parse(response.body, symbolize_names: true)

    expect(user).to be_a(Hash)
    expect(user).to have_key :data

    expect(user[:data]).to have_key :id
    expect(user[:data]).to have_key :type
    expect(user[:data]).to have_key :attributes

    expect(user[:data][:id]).to be_a(String)
    expect(user[:data][:type]).to be_a(String)
    expect(user[:data][:type]).to eq('users')
    expect(user[:data][:attributes]).to be_a(Hash)
    expect(user[:data][:attributes]).to have_key :email
    expect(user[:data][:attributes][:email]).to be_a(String)
    expect(user[:data][:attributes][:email]).to eq('whatever@example.com')
    expect(user[:data][:attributes]).to have_key :api_key
    expect(user[:data][:attributes][:api_key]).to be_a(String)
  end

  it 'returns errors if not all params are included' do
    body = {
      "email": "whatever@example.com",
      "password": '',
      "password_confirmation": ''
    }

    post '/api/v1/users', params: body

    expect(response).to_not be_successful
    expect(response.status).to eq(401)
    expect(response.body).to eq('Password can\'t be blank and Password confirmation can\'t be blank')
  end
end
require 'rails_helper'

RSpec.describe 'User Login' do
  it 'allows a user to login' do
    user = User.create!(
      email: 'whatever@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
    
    body = {
      "email": "whatever@example.com",
      "password": "password"
    }
    
    post '/api/v1/sessions', params: body
    
    expect(response).to be_successful
    expect(response.status).to eq(200)

    login = JSON.parse(response.body, symbolize_names: true)

    expect(login).to be_a(Hash)
    expect(login).to have_key :data

    expect(login[:data]).to have_key :id
    expect(login[:data]).to have_key :type
    expect(login[:data]).to have_key :attributes

    expect(login[:data][:id]).to be_a(String)
    expect(login[:data][:type]).to be_a(String)
    expect(login[:data][:type]).to eq('users')
    expect(login[:data][:attributes]).to be_a(Hash)
    expect(login[:data][:attributes]).to have_key :email
    expect(login[:data][:attributes][:email]).to be_a(String)
    expect(login[:data][:attributes][:email]).to eq('whatever@example.com')
    expect(login[:data][:attributes]).to have_key :api_key
    expect(login[:data][:attributes][:api_key]).to be_a(String)
  end

  it 'returns an error if invalid credentials are provided' do
    user = User.create!(
      email: 'whatever@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
    
    body = {
      "email": "whatever@example.com",
      "password": "wrongpassword"
    }
    
    post '/api/v1/sessions', params: body

    expect(response).to_not be_successful
    expect(response.status).to eq(401)
    expect(response.body).to eq('Invalid Credentials')
  end
end
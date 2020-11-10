require 'rails_helper'

RSpec.describe 'User Registration' do
  it 'allows a user to sign in' do
    post '/api/v1/users'

    expect(response).to be_successful
    
    user = JSON.parse(response.body, symbolize_names: true)
  end
end
require 'rails_helper'

RSpec.describe 'Retrieve businesses' do
  it 'retrieves a business when given start, end, and cuisine' do
    get '/api/v1/munchies?start=denver,co&end=pueblo,co&food=chinese'

    expect(response).to be_successful
    business = JSON.parse(response.body, symbolize_names: true)

    expect(business).to be_a(Hash)
    expect(business).to have_key :data
  end
end
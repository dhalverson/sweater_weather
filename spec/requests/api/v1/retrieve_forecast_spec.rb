require 'rails_helper'

RSpec.describe 'Retrieve weather' do
  it 'retrieves current weather for a city' do
    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful
    forecast = JSON.parse(response.body, symbolize_names: true)

  end
end

# GET /api/v1/forecast?location=denver,co
# Content-Type: application/json
# Accept: application/json
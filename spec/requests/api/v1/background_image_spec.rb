require 'rails_helper'

RSpec.describe 'Get background image for city' do
  it 'gets a background image showing the city' do
    get '/api/v1/backgrounds?location=denver,co'

    expect(response).to be_successful
    result = JSON.parse(response.body,symbolize_names: true)

  end
end
require 'rails_helper'

RSpec.describe 'Forecast Facade' do
  it 'forecast search' do
    location = 'denver,co'
    result = ForecastFacade.total_forecast(location)

    expect(result).to be_a(Forecast)
    require 'pry'; binding.pry
  end
end
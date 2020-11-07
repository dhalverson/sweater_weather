require 'rails_helper'

RSpec.describe 'Forecast Facade' do
  it 'forecast search' do
    location = 'denver,co'
    result = ForecastFacade.get_forecast(location)

    require 'pry'; binding.pry
    expect(result).to be_a(Forecast)
    expect(result.current).to be_a(Hash)
    expect(result.daily).to be_an(Array)
    expect(result.hourly).to be_an(Array)
  end
end
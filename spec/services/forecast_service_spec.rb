require 'rails_helper'

RSpec.describe 'Forecast Service' do
  it 'returns weather from a set of coordinates' do
    city_coordinates = {:lat=>39.738453, :lng=>-104.984853}
    result = ForecastService.get_forecast(city_coordinates)

    expect(result).to be_a(Hash)


    expect(result).to have_key :current
    expect(result).to have_key :hourly
    expect(result).to have_key :daily
    expect(result).to_not have_key :minutely
    expect(result).to_not have_key :alerts

    current = result[:current]
    expect(current).to be_a(Hash)
    expect(current).to have_key :dt
    expect(current[:dt]).to be_an(Integer)
    expect(current).to have_key :sunrise
    expect(current[:sunrise]).to be_an(Integer)
    expect(current).to have_key :sunset
    expect(current[:sunset]).to be_an(Integer)
    expect(current).to have_key :temp
    expect(current[:temp]).to be_a(Float)
    expect(current).to have_key :feels_like
    expect(current[:feels_like]).to be_a(Float)
    expect(current).to have_key :humidity
    expect(current[:humidity]).to be_an(Integer)
    expect(current).to have_key :uvi
    expect(current[:uvi]).to be_an(Float)
    expect(current).to have_key :visibility
    expect(current[:visibility]).to be_an(Integer)
    expect(current[:weather][0]).to have_key :description
    expect(current[:weather][0][:description]).to be_a(String)
    expect(current[:weather][0]).to have_key :icon
    expect(current[:weather][0][:icon]).to be_a(String)

    hourly = result[:hourly]
    require 'pry'; binding.pry


  end
end
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

    expect(result[:hourly]).to be_an(Array)
    hourly = result[:hourly][0]

    expect(hourly).to have_key :dt
    expect(hourly[:dt]).to be_an(Integer)
    expect(hourly).to have_key :wind_speed
    expect(hourly[:wind_speed]).to be_a(Float)
    expect(hourly).to have_key :wind_deg
    expect(hourly[:wind_deg]).to be_an(Integer)
    expect(hourly[:weather][0]).to have_key :description
    expect(hourly[:weather][0][:description]).to be_a(String)
    expect(hourly[:weather][0]).to have_key :icon
    expect(hourly[:weather][0][:icon]).to be_a(String)

    expect(result[:daily]).to be_an(Array)
    daily = result[:daily][0]

    expect(daily).to have_key :dt
    expect(daily[:dt]).to be_an(Integer)
    expect(daily).to have_key :sunrise
    expect(daily[:wind_speed]).to be_a(Float)
    expect(daily).to have_key :sunset
    expect(daily[:wind_deg]).to be_an(Integer)
    expect(daily[:temp]).to have_key :max
    expect(daily[:temp][:max]).to be_a(Float)
    expect(daily[:temp]).to have_key :min
    expect(daily[:temp][:min]).to be_a(Float)
    expect(daily[:weather][0]).to have_key :description
    expect(daily[:weather][0][:description]).to be_a(String)
    expect(daily[:weather][0]).to have_key :icon
    expect(daily[:weather][0][:icon]).to be_a(String)
  end
end
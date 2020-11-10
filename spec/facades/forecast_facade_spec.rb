require 'rails_helper'

RSpec.describe 'Forecast Facade' do
  it 'forecast search', :vcr do
    location = 'denver,co'
    forecast = ForecastFacade.total_forecast(location)

    expect(forecast).to be_a(Forecast)

    expect(forecast.current_weather.dt).to eq('11/10/2020 11:14 MST')
    expect(forecast.current_weather.sunrise).to eq('11/10/2020 06:39 MST')
    expect(forecast.current_weather.sunset).to eq('11/10/2020 16:48 MST')
    expect(forecast.current_weather.temp).to eq(41.34)
    expect(forecast.current_weather.feels_like).to eq(33.03)
    expect(forecast.current_weather.humidity).to eq(26)
    expect(forecast.current_weather.uvi).to eq(2.41)
    expect(forecast.current_weather.visibility).to eq(10000)
    expect(forecast.current_weather.description).to eq('clear sky')
    expect(forecast.current_weather.icon).to eq('01d')
    
    expect(forecast.hourly_weather.first.time).to eq('11:00:00 MST')
    expect(forecast.hourly_weather.first.temp).to eq(41.34)
    expect(forecast.hourly_weather.first.wind_speed).to eq(4.41)
    expect(forecast.hourly_weather.first.wind_direction).to eq('SSW')
    expect(forecast.hourly_weather.first.conditions).to eq('clear sky')
    expect(forecast.hourly_weather.first.icon).to eq('01d')

    expect(forecast.daily_weather.first.date).to eq('11/10/2020')
    expect(forecast.daily_weather.first.sunrise).to eq('11/10/2020 06:39 MST')
    expect(forecast.daily_weather.first.sunset).to eq('11/10/2020 16:48 MST')
    expect(forecast.daily_weather.first.max_temp).to eq(44.58)
    expect(forecast.daily_weather.first.min_temp).to eq(33.17)
    expect(forecast.daily_weather.first.conditions).to eq('clear sky')
    expect(forecast.daily_weather.first.icon).to eq('01d')
  end
end
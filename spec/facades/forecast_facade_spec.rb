require 'rails_helper'

RSpec.describe 'Forecast Facade' do
  it 'forecast search', :vcr do
    location = 'denver,co'
    forecast = ForecastFacade.total_forecast(location)

    expect(forecast).to be_a(Forecast)

    expect(forecast.current_weather.dt).to eq('11/08/2020 14:54 MST')
    expect(forecast.current_weather.sunrise).to eq('11/08/2020 06:37 MST')
    expect(forecast.current_weather.sunset).to eq('11/08/2020 16:50 MST')
    expect(forecast.current_weather.temp).to eq(58.37)
    expect(forecast.current_weather.feels_like).to eq(45.18)
    expect(forecast.current_weather.humidity).to eq(12)
    expect(forecast.current_weather.uvi).to eq(2.77)
    expect(forecast.current_weather.visibility).to eq(10000)
    expect(forecast.current_weather.description).to eq('few clouds')
    expect(forecast.current_weather.icon).to eq('02d')
    
    expect(forecast.hourly_weather.first.time).to eq('14:00:00 MST')
    expect(forecast.hourly_weather.first.temp).to eq(58.37)
    expect(forecast.hourly_weather.first.wind_speed).to eq(17.13)
    expect(forecast.hourly_weather.first.wind_direction).to eq('S')
    expect(forecast.hourly_weather.first.conditions).to eq('few clouds')
    expect(forecast.hourly_weather.first.icon).to eq('02d')

    expect(forecast.daily_weather.first.date).to eq('11/08/2020')
    expect(forecast.daily_weather.first.sunrise).to eq('11/08/2020 06:37 MST')
    expect(forecast.daily_weather.first.sunset).to eq('11/08/2020 16:50 MST')
    expect(forecast.daily_weather.first.max_temp).to eq(58.37)
    expect(forecast.daily_weather.first.min_temp).to eq(48.99)
    expect(forecast.daily_weather.first.conditions).to eq('clear sky')
    expect(forecast.daily_weather.first.icon).to eq('01d')
  end
end
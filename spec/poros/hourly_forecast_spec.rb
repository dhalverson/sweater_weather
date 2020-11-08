require 'rails_helper'

RSpec.describe 'Hourly Forecast PORO' do
  before :each do
    @attr = {
        "dt": 1604858400,
        "temp": 55.08,
        "feels_like": 42.26,
        "pressure": 999,
        "humidity": 12,
        "dew_point": 6.42,
        "clouds": 1,
        "visibility": 10000,
        "wind_speed": 11.83,
        "wind_deg": 180,
        "weather": [
            {
                "id": 800,
                "main": "Clear",
                "description": "clear sky",
                "icon": "01d"
            }
        ],
        "pop": 0
    }
  end

  it 'can create a hourly forecast object' do
    hourly_forecast = HourlyForecast.new(@attr)

    expect(hourly_forecast).to be_a(HourlyForecast)

    expect(hourly_forecast.time).to eq('11:00:00 MST')
    expect(hourly_forecast.wind_speed).to eq(11.83)
    expect(hourly_forecast.wind_direction).to eq('S')
    expect(hourly_forecast.conditions).to eq('clear sky')
    expect(hourly_forecast.icon).to eq('01d')
  end

  it 'can convert wind degrees to cardinal directions' do
    cardinal = HourlyForecast.new(@attr).cardinal_direction(0)
    expect(cardinal).to eq('N')
    cardinal = HourlyForecast.new(@attr).cardinal_direction(45)
    expect(cardinal).to eq('NE')
    cardinal = HourlyForecast.new(@attr).cardinal_direction(90)
    expect(cardinal).to eq('E')
    cardinal = HourlyForecast.new(@attr).cardinal_direction(135)
    expect(cardinal).to eq('SE')
    cardinal = HourlyForecast.new(@attr).cardinal_direction(180)
    expect(cardinal).to eq('S')
    cardinal = HourlyForecast.new(@attr).cardinal_direction(225)
    expect(cardinal).to eq('SW')
    cardinal = HourlyForecast.new(@attr).cardinal_direction(270)
    expect(cardinal).to eq('W')
    cardinal = HourlyForecast.new(@attr).cardinal_direction(315)
    expect(cardinal).to eq('NW')    
    cardinal = HourlyForecast.new(@attr).cardinal_direction(360)
    expect(cardinal).to eq('N')
  end
end

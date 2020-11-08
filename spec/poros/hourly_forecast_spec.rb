require 'rails_helper'

RSpec.describe 'Hourly Forecast' do
  it 'can convert wind degrees to cardinal directions' do
    cardinal = HourlyForecast.cardinal_direction(0)
    expect(cardinal).to eq('N')
    cardinal = HourlyForecast.cardinal_direction(45)
    expect(cardinal).to eq('NE')
    cardinal = HourlyForecast.cardinal_direction(90)
    expect(cardinal).to eq('E')
    cardinal = HourlyForecast.cardinal_direction(135)
    expect(cardinal).to eq('SE')
    cardinal = HourlyForecast.cardinal_direction(180)
    expect(cardinal).to eq('S')
    cardinal = HourlyForecast.cardinal_direction(225)
    expect(cardinal).to eq('SW')
    cardinal = HourlyForecast.cardinal_direction(270)
    expect(cardinal).to eq('W')
    cardinal = HourlyForecast.cardinal_direction(315)
    expect(cardinal).to eq('NW')    
    cardinal = HourlyForecast.cardinal_direction(360)
    expect(cardinal).to eq('N')
  end
end
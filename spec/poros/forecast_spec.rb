require 'rails_helper'

RSpec.describe 'Forecast PORO' do
  it 'creates a poro for a forecast' do
    attr = {
        "dt": 1604704124,
        "sunrise": 1604669693,
        "sunset": 1604706738,
        "temp": 64.13,
        "feels_like": 56.82,
        "humidity": 21,
        "uvi": 3.27,
        "visibility": 10000,
        "weather": [
            {
                "id": 803,
                "main": "Clouds",
                "description": "broken clouds",
                "icon": "04d"
            }
        ]   
    }

    forecast = Forecast.new(attr)

    expect(forecast.dt).to eq(1604704124)
    expect(forecast.sunrise).to eq(1604669693)
    expect(forecast.sunset).to eq(1604706738)
    expect(forecast.temp).to eq(64.13)
    expect(forecast.feels_like).to eq(56.82)
    expect(forecast.humidity).to eq(21)
    expect(forecast.uvi).to eq(3.27)
    expect(forecast.visibility).to eq(10000)
    expect(forecast.weather[0][:desription]).to eq('broken clouds')
    expect(forecast.weather[0][:icon]).to eq('04d')
  end
end
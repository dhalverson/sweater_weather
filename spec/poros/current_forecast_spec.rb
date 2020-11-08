require 'rails_helper'

RSpec.describe 'Current Forecast PORO' do
  it 'can create a current forecast object' do
    attr = {
        "dt": 1604781201,
        "sunrise": 1604756164,
        "sunset": 1604793080,
        "temp": 71.38,
        "feels_like": 62.55,
        "pressure": 995,
        "humidity": 22,
        "dew_point": 30.78,
        "uvi": 3.29,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 8.99,
        "wind_deg": 146,
        "wind_gust": 15.99,
        "weather": [
            {
                "id": 804,
                "main": "Clouds",
                "description": "overcast clouds",
                "icon": "04d"
            }
        ]
    }  

    current_forecast = CurrentForecast.new(attr)

    expect(current_forecast.dt).to eq('11/07/2020 13:33 MST')
    expect(current_forecast.sunrise).to eq('11/07/2020 06:36 MST')
    expect(current_forecast.sunset).to eq('11/07/2020 16:51 MST')
    expect(current_forecast.temp).to eq(71.38)
    expect(current_forecast.feels_like).to eq(62.55)
    expect(current_forecast.humidity).to eq(22)
    expect(current_forecast.uvi).to eq(3.29)
    expect(current_forecast.visibility).to eq(10000)
    expect(current_forecast.description).to eq('overcast clouds')
    expect(current_forecast.icon).to eq('04d')
  end
end
require 'rails_helper'

RSpec.describe 'Daily Forecast PORO' do
  it 'can create a daily forecast object' do

    attr = {
        "dt": 1604858400,
        "sunrise": 1604842634,
        "sunset": 1604879421,
        "temp": {
            "day": 55.08,
            "min": 49.03,
            "max": 56.89,
            "night": 49.03,
            "eve": 54.64,
            "morn": 56.57
        },
        "feels_like": {
            "day": 42.26,
            "night": 40.93,
            "eve": 39.88,
            "morn": 44.87
        },
        "pressure": 999,
        "humidity": 12,
        "dew_point": 6.42,
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
        "clouds": 1,
        "pop": 0.52,
        "uvi": 2.77
    }

    daily_forecast = DailyForecast.new(attr)

    expect(daily_forecast).to be_a(DailyForecast)

    expect(daily_forecast.date).to eq('11/08/2020')
    expect(daily_forecast.sunrise).to eq('11/08/2020 06:37 MST')
    expect(daily_forecast.sunset).to eq('11/08/2020 16:50 MST')
    expect(daily_forecast.max_temp).to eq(56.89)
    expect(daily_forecast.min_temp).to eq(49.03)
    expect(daily_forecast.conditions).to eq('clear sky')
    expect(daily_forecast.icon).to eq('01d')
  end
end
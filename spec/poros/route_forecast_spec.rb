require 'rails_helper'

RSpec.describe 'Route Forecast PORO' do
  it 'can return summary and temperature' do
    attr =  {
    "lat": 39.74,
    "lon": -104.99,
    "timezone": "America/Denver",
    "timezone_offset": -25200,
    "current": {
        "dt": 1605022396,
        "sunrise": 1605015573,
        "sunset": 1605052108,
        "temp": 34.45,
        "feels_like": 27.52,
        "pressure": 1011,
        "humidity": 52,
        "dew_point": 20.16,
        "uvi": 2.41,
        "clouds": 0,
        "visibility": 10000,
        "wind_speed": 3.22,
        "wind_deg": 230,
        "weather": [
            {
                "id": 800,
                "main": "Clear",
                "description": "clear sky",
                "icon": "01d"
            }
        ]
      }
    }
  
    route_forecast = RouteForecast.new(attr)

    expect(route_forecast.summary).to eq("Clear Sky")
    expect(route_forecast.temperature).to eq('34.45')
  end
end
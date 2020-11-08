require 'rails_helper'

RSpec.describe 'Forecast PORO' do
  it 'can create a forecast object' do
    attr = {
        "lat": 39.74,
        "lon": -104.99,
        "timezone": "America/Denver",
        "timezone_offset": -25200,
        "current": {
            "dt": 1604860439,
            "sunrise": 1604842634,
            "sunset": 1604879421,
            "temp": 55.08,
            "feels_like": 43.86,
            "pressure": 999,
            "humidity": 12,
            "dew_point": 6.42,
            "uvi": 2.77,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 8.99,
            "wind_deg": 204,
            "wind_gust": 17,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ]
        },
        "hourly": [
            {
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
            },
            {
                "dt": 1604862000,
                "temp": 55.87,
                "feels_like": 43.45,
                "pressure": 1000,
                "humidity": 19,
                "dew_point": 16.2,
                "clouds": 1,
                "visibility": 10000,
                "wind_speed": 12.33,
                "wind_deg": 196,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604865600,
                "temp": 57.85,
                "feels_like": 44.26,
                "pressure": 1001,
                "humidity": 22,
                "dew_point": 20.71,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 15.12,
                "wind_deg": 199,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604869200,
                "temp": 58.55,
                "feels_like": 44.22,
                "pressure": 1001,
                "humidity": 25,
                "dew_point": 23.92,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 17.07,
                "wind_deg": 198,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604872800,
                "temp": 58.42,
                "feels_like": 44.73,
                "pressure": 1001,
                "humidity": 26,
                "dew_point": 24.66,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 16.11,
                "wind_deg": 203,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604876400,
                "temp": 57.58,
                "feels_like": 43.83,
                "pressure": 1001,
                "humidity": 29,
                "dew_point": 9.32,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 16.58,
                "wind_deg": 209,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604880000,
                "temp": 54.52,
                "feels_like": 40.08,
                "pressure": 1003,
                "humidity": 32,
                "dew_point": 8.82,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 17.72,
                "wind_deg": 215,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604883600,
                "temp": 53.22,
                "feels_like": 40.05,
                "pressure": 1004,
                "humidity": 34,
                "dew_point": 10.02,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 15.55,
                "wind_deg": 215,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604887200,
                "temp": 51.82,
                "feels_like": 41.36,
                "pressure": 1004,
                "humidity": 36,
                "dew_point": 10.98,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 10.76,
                "wind_deg": 208,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604890800,
                "temp": 51.19,
                "feels_like": 41.68,
                "pressure": 1004,
                "humidity": 38,
                "dew_point": 12.29,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 9.22,
                "wind_deg": 212,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604894400,
                "temp": 50.58,
                "feels_like": 40.64,
                "pressure": 1004,
                "humidity": 40,
                "dew_point": 15.46,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 10.16,
                "wind_deg": 212,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604898000,
                "temp": 49.42,
                "feels_like": 39.99,
                "pressure": 1004,
                "humidity": 43,
                "dew_point": 18.07,
                "clouds": 7,
                "visibility": 10000,
                "wind_speed": 9.42,
                "wind_deg": 213,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604901600,
                "temp": 48.97,
                "feels_like": 40.87,
                "pressure": 1004,
                "humidity": 45,
                "dew_point": 19.08,
                "clouds": 19,
                "visibility": 10000,
                "wind_speed": 7.2,
                "wind_deg": 208,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604905200,
                "temp": 48.09,
                "feels_like": 39.7,
                "pressure": 1004,
                "humidity": 46,
                "dew_point": 19.74,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 7.65,
                "wind_deg": 193,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0.08
            },
            {
                "dt": 1604908800,
                "temp": 47.34,
                "feels_like": 41.74,
                "pressure": 1004,
                "humidity": 48,
                "dew_point": 20.52,
                "clouds": 42,
                "visibility": 10000,
                "wind_speed": 2.77,
                "wind_deg": 187,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604912400,
                "temp": 44.01,
                "feels_like": 34.88,
                "pressure": 1004,
                "humidity": 52,
                "dew_point": 15.96,
                "clouds": 28,
                "visibility": 10000,
                "wind_speed": 8.77,
                "wind_deg": 8,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03n"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604916000,
                "temp": 43.25,
                "feels_like": 31.06,
                "pressure": 1005,
                "humidity": 52,
                "dew_point": 13.24,
                "clouds": 21,
                "visibility": 10000,
                "wind_speed": 14.07,
                "wind_deg": 8,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604919600,
                "temp": 41.76,
                "feels_like": 28.72,
                "pressure": 1006,
                "humidity": 56,
                "dew_point": 15.69,
                "clouds": 17,
                "visibility": 10000,
                "wind_speed": 15.66,
                "wind_deg": 355,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604923200,
                "temp": 40.48,
                "feels_like": 28.83,
                "pressure": 1007,
                "humidity": 59,
                "dew_point": 15.39,
                "clouds": 28,
                "visibility": 10000,
                "wind_speed": 13.22,
                "wind_deg": 20,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604926800,
                "temp": 37.4,
                "feels_like": 28.33,
                "pressure": 1009,
                "humidity": 71,
                "dew_point": 20.71,
                "clouds": 77,
                "visibility": 10000,
                "wind_speed": 8.99,
                "wind_deg": 23,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604930400,
                "temp": 36.09,
                "feels_like": 28.26,
                "pressure": 1010,
                "humidity": 78,
                "dew_point": 23.88,
                "clouds": 86,
                "visibility": 10000,
                "wind_speed": 7.02,
                "wind_deg": 26,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604934000,
                "temp": 36.41,
                "feels_like": 28.62,
                "pressure": 1009,
                "humidity": 77,
                "dew_point": 24.53,
                "clouds": 91,
                "visibility": 10000,
                "wind_speed": 6.98,
                "wind_deg": 29,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.12
            },
            {
                "dt": 1604937600,
                "temp": 37.38,
                "feels_like": 29.61,
                "pressure": 1009,
                "humidity": 74,
                "dew_point": 24.39,
                "clouds": 69,
                "visibility": 10000,
                "wind_speed": 6.93,
                "wind_deg": 23,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604941200,
                "temp": 38.1,
                "feels_like": 30.54,
                "pressure": 1008,
                "humidity": 72,
                "dew_point": 24.04,
                "clouds": 75,
                "visibility": 10000,
                "wind_speed": 6.55,
                "wind_deg": 44,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604944800,
                "temp": 39.04,
                "feels_like": 31.86,
                "pressure": 1008,
                "humidity": 69,
                "dew_point": 23.68,
                "clouds": 77,
                "visibility": 10000,
                "wind_speed": 5.84,
                "wind_deg": 48,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604948400,
                "temp": 40.14,
                "feels_like": 33.13,
                "pressure": 1007,
                "humidity": 66,
                "dew_point": 23.34,
                "clouds": 93,
                "visibility": 10000,
                "wind_speed": 5.5,
                "wind_deg": 57,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.28
            },
            {
                "dt": 1604952000,
                "temp": 41.18,
                "feels_like": 33.62,
                "pressure": 1007,
                "humidity": 63,
                "dew_point": 23.07,
                "clouds": 97,
                "visibility": 10000,
                "wind_speed": 6.46,
                "wind_deg": 74,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.4
            },
            {
                "dt": 1604955600,
                "temp": 41.18,
                "feels_like": 33.42,
                "pressure": 1007,
                "humidity": 64,
                "dew_point": 24.39,
                "clouds": 98,
                "visibility": 10000,
                "wind_speed": 6.91,
                "wind_deg": 69,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.44
            },
            {
                "dt": 1604959200,
                "temp": 37.89,
                "feels_like": 29.77,
                "pressure": 1007,
                "humidity": 76,
                "dew_point": 28.42,
                "clouds": 98,
                "visibility": 10000,
                "wind_speed": 7.81,
                "wind_deg": 52,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.6
            },
            {
                "dt": 1604962800,
                "temp": 34.65,
                "feels_like": 28.09,
                "pressure": 1008,
                "humidity": 89,
                "dew_point": 31.53,
                "clouds": 98,
                "visibility": 57,
                "wind_speed": 5.21,
                "wind_deg": 53,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.68
            },
            {
                "dt": 1604966400,
                "temp": 33.67,
                "feels_like": 26.02,
                "pressure": 1010,
                "humidity": 94,
                "dew_point": 32.22,
                "clouds": 99,
                "visibility": 136,
                "wind_speed": 7.27,
                "wind_deg": 63,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.88
            },
            {
                "dt": 1604970000,
                "temp": 33.31,
                "feels_like": 26.4,
                "pressure": 1012,
                "humidity": 94,
                "dew_point": 31.44,
                "clouds": 100,
                "visibility": 1821,
                "wind_speed": 5.88,
                "wind_deg": 84,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.76
            },
            {
                "dt": 1604973600,
                "temp": 32.74,
                "feels_like": 25.68,
                "pressure": 1013,
                "humidity": 95,
                "dew_point": 30.7,
                "clouds": 100,
                "visibility": 432,
                "wind_speed": 6.04,
                "wind_deg": 51,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.76
            },
            {
                "dt": 1604977200,
                "temp": 32.81,
                "feels_like": 26.71,
                "pressure": 1014,
                "humidity": 95,
                "dew_point": 30.11,
                "clouds": 100,
                "visibility": 7434,
                "wind_speed": 4.36,
                "wind_deg": 106,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.72
            },
            {
                "dt": 1604980800,
                "temp": 33.04,
                "feels_like": 26.67,
                "pressure": 1015,
                "humidity": 93,
                "dew_point": 29.41,
                "clouds": 100,
                "visibility": 4255,
                "wind_speed": 4.76,
                "wind_deg": 75,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.72
            },
            {
                "dt": 1604984400,
                "temp": 33.1,
                "feels_like": 27.05,
                "pressure": 1016,
                "humidity": 93,
                "dew_point": 29.28,
                "clouds": 100,
                "visibility": 3246,
                "wind_speed": 4.21,
                "wind_deg": 54,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.88
            },
            {
                "dt": 1604988000,
                "temp": 33.35,
                "feels_like": 27.81,
                "pressure": 1016,
                "humidity": 91,
                "dew_point": 28.94,
                "clouds": 100,
                "visibility": 10000,
                "wind_speed": 3.24,
                "wind_deg": 65,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.88
            },
            {
                "dt": 1604991600,
                "temp": 33.37,
                "feels_like": 27.93,
                "pressure": 1017,
                "humidity": 91,
                "dew_point": 28.63,
                "clouds": 97,
                "visibility": 10000,
                "wind_speed": 3.06,
                "wind_deg": 152,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604995200,
                "temp": 33.28,
                "feels_like": 27.5,
                "pressure": 1017,
                "humidity": 91,
                "dew_point": 28.29,
                "clouds": 59,
                "visibility": 10000,
                "wind_speed": 3.65,
                "wind_deg": 174,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604998800,
                "temp": 33.04,
                "feels_like": 26.71,
                "pressure": 1017,
                "humidity": 90,
                "dew_point": 26.49,
                "clouds": 40,
                "visibility": 10000,
                "wind_speed": 4.52,
                "wind_deg": 184,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605002400,
                "temp": 32.36,
                "feels_like": 25.56,
                "pressure": 1017,
                "humidity": 89,
                "dew_point": 22.41,
                "clouds": 29,
                "visibility": 10000,
                "wind_speed": 5.12,
                "wind_deg": 203,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605006000,
                "temp": 31.91,
                "feels_like": 25.34,
                "pressure": 1017,
                "humidity": 87,
                "dew_point": 19.71,
                "clouds": 23,
                "visibility": 10000,
                "wind_speed": 4.47,
                "wind_deg": 200,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605009600,
                "temp": 31.39,
                "feels_like": 24.51,
                "pressure": 1018,
                "humidity": 86,
                "dew_point": 18.32,
                "clouds": 20,
                "visibility": 10000,
                "wind_speed": 4.83,
                "wind_deg": 192,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605013200,
                "temp": 31.75,
                "feels_like": 24.08,
                "pressure": 1018,
                "humidity": 85,
                "dew_point": 17.2,
                "clouds": 95,
                "visibility": 10000,
                "wind_speed": 6.26,
                "wind_deg": 193,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605016800,
                "temp": 31.84,
                "feels_like": 24.1,
                "pressure": 1019,
                "humidity": 84,
                "dew_point": 16.45,
                "clouds": 48,
                "visibility": 10000,
                "wind_speed": 6.33,
                "wind_deg": 204,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605020400,
                "temp": 33.24,
                "feels_like": 26.26,
                "pressure": 1018,
                "humidity": 79,
                "dew_point": 16.05,
                "clouds": 31,
                "visibility": 10000,
                "wind_speed": 4.97,
                "wind_deg": 200,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605024000,
                "temp": 35.51,
                "feels_like": 27.95,
                "pressure": 1016,
                "humidity": 73,
                "dew_point": 16.12,
                "clouds": 24,
                "visibility": 10000,
                "wind_speed": 6.06,
                "wind_deg": 198,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1605027600,
                "temp": 38.43,
                "feels_like": 30.81,
                "pressure": 1015,
                "humidity": 64,
                "dew_point": 14.79,
                "clouds": 19,
                "visibility": 10000,
                "wind_speed": 6.06,
                "wind_deg": 194,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02d"
                    }
                ],
                "pop": 0
            }
        ],
        "daily": [
            {
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
            },
            {
                "dt": 1604944800,
                "sunrise": 1604929103,
                "sunset": 1604965763,
                "temp": {
                    "day": 39.04,
                    "min": 32.81,
                    "max": 44.01,
                    "night": 33.35,
                    "eve": 33.67,
                    "morn": 40.48
                },
                "feels_like": {
                    "day": 31.86,
                    "night": 27.81,
                    "eve": 26.02,
                    "morn": 28.83
                },
                "pressure": 1008,
                "humidity": 69,
                "dew_point": 23.68,
                "wind_speed": 5.84,
                "wind_deg": 48,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": 77,
                "pop": 0.88,
                "uvi": 2.41
            },
            {
                "dt": 1605031200,
                "sunrise": 1605015573,
                "sunset": 1605052108,
                "temp": {
                    "day": 40.96,
                    "min": 31.39,
                    "max": 45.5,
                    "night": 37.51,
                    "eve": 43.56,
                    "morn": 31.39
                },
                "feels_like": {
                    "day": 33.4,
                    "night": 32.23,
                    "eve": 37.81,
                    "morn": 24.51
                },
                "pressure": 1014,
                "humidity": 56,
                "dew_point": 12.92,
                "wind_speed": 5.79,
                "wind_deg": 195,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02d"
                    }
                ],
                "clouds": 16,
                "pop": 0.08,
                "uvi": 2.43
            },
            {
                "dt": 1605117600,
                "sunrise": 1605102042,
                "sunset": 1605138454,
                "temp": {
                    "day": 41.43,
                    "min": 34.25,
                    "max": 44.94,
                    "night": 38.19,
                    "eve": 42.13,
                    "morn": 34.25
                },
                "feels_like": {
                    "day": 34.93,
                    "night": 31.33,
                    "eve": 35.6,
                    "morn": 28.65
                },
                "pressure": 1013,
                "humidity": 55,
                "dew_point": 12.45,
                "wind_speed": 3.89,
                "wind_deg": 54,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03d"
                    }
                ],
                "clouds": 34,
                "pop": 0,
                "uvi": 2.46
            },
            {
                "dt": 1605204000,
                "sunrise": 1605188512,
                "sunset": 1605224802,
                "temp": {
                    "day": 43.38,
                    "min": 33.8,
                    "max": 47.89,
                    "night": 38.66,
                    "eve": 45.99,
                    "morn": 33.8
                },
                "feels_like": {
                    "day": 38.41,
                    "night": 31.89,
                    "eve": 39.85,
                    "morn": 25.97
                },
                "pressure": 1019,
                "humidity": 47,
                "dew_point": 7.32,
                "wind_speed": 0.78,
                "wind_deg": 198,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "clouds": 0,
                "pop": 0,
                "uvi": 2.27
            },
            {
                "dt": 1605290400,
                "sunrise": 1605274981,
                "sunset": 1605311151,
                "temp": {
                    "day": 46.54,
                    "min": 36.81,
                    "max": 50.22,
                    "night": 41.16,
                    "eve": 47.44,
                    "morn": 36.81
                },
                "feels_like": {
                    "day": 40.69,
                    "night": 35.74,
                    "eve": 41.56,
                    "morn": 29.95
                },
                "pressure": 1009,
                "humidity": 40,
                "dew_point": 3.85,
                "wind_speed": 2.15,
                "wind_deg": 157,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": 92,
                "pop": 0,
                "uvi": 2.27
            },
            {
                "dt": 1605376800,
                "sunrise": 1605361450,
                "sunset": 1605397503,
                "temp": {
                    "day": 49.98,
                    "min": 37.26,
                    "max": 56.57,
                    "night": 42.98,
                    "eve": 51.42,
                    "morn": 37.26
                },
                "feels_like": {
                    "day": 43.12,
                    "night": 38.32,
                    "eve": 42.12,
                    "morn": 27.68
                },
                "pressure": 1005,
                "humidity": 37,
                "dew_point": 7.97,
                "wind_speed": 4.16,
                "wind_deg": 95,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": 98,
                "pop": 0.15,
                "uvi": 2.31
            },
            {
                "dt": 1605463200,
                "sunrise": 1605447919,
                "sunset": 1605483856,
                "temp": {
                    "day": 39.92,
                    "min": 34.16,
                    "max": 40.41,
                    "night": 34.16,
                    "eve": 36.64,
                    "morn": 37.65
                },
                "feels_like": {
                    "day": 24.31,
                    "night": 25.47,
                    "eve": 20.25,
                    "morn": 26.13
                },
                "pressure": 1018,
                "humidity": 50,
                "dew_point": 1.6,
                "wind_speed": 19.33,
                "wind_deg": 302,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02d"
                    }
                ],
                "clouds": 20,
                "pop": 0.19,
                "uvi": 2.46
            }
        ]
    }

    forecast = Forecast.new(attr)

    expect(forecast.current_weather.dt).to eq('11/08/2020 11:33 MST')
    expect(forecast.current_weather.sunrise).to eq('11/08/2020 06:37 MST')
    expect(forecast.current_weather.sunset).to eq('11/08/2020 16:50 MST')
    expect(forecast.current_weather.temp).to eq(55.08)
    expect(forecast.current_weather.feels_like).to eq(43.86)
    expect(forecast.current_weather.humidity).to eq(12)
    expect(forecast.current_weather.uvi).to eq(2.77)
    expect(forecast.current_weather.visibility).to eq(10000)
    expect(forecast.current_weather.description).to eq('clear sky')
    expect(forecast.current_weather.icon).to eq('01d')
    
    expect(forecast.hourly_weather.first.time).to eq('11:00:00 MST')
    expect(forecast.hourly_weather.first.wind_speed).to eq(11.83)
    expect(forecast.hourly_weather.first.wind_direction).to eq('S')
    expect(forecast.hourly_weather.first.conditions).to eq('clear sky')
    expect(forecast.hourly_weather.first.icon).to eq('01d')

    expect(forecast.daily_weather.first.date).to eq('11/08/2020')
    expect(forecast.daily_weather.first.sunrise).to eq('11/08/2020 06:37 MST')
    expect(forecast.daily_weather.first.sunset).to eq('11/08/2020 16:50 MST')
    expect(forecast.daily_weather.first.max_temp).to eq(56.89)
    expect(forecast.daily_weather.first.min_temp).to eq(49.03)
    expect(forecast.daily_weather.first.conditions).to eq('clear sky')
    expect(forecast.daily_weather.first.icon).to eq('01d')
  end
end
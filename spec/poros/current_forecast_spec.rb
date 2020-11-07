require 'rails_helper'

RSpec.describe 'Current Forecast' do
  it 'can create a PORO for the current forecast' do
    attr = {
        "lat": 39.74,
        "lon": -104.99,
        "timezone": "America/DenverXXXXX",
        "timezone_offset": -25200,
        "current": {
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
        },
        "hourly": [
            {
                "dt": 1604779200,
                "temp": 71.38,
                "feels_like": 57.63,
                "pressure": 995,
                "humidity": 22,
                "dew_point": 30.78,
                "clouds": 100,
                "visibility": 10000,
                "wind_speed": 17.69,
                "wind_deg": 195,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604782800,
                "temp": 72.12,
                "feels_like": 57.96,
                "pressure": 997,
                "humidity": 21,
                "dew_point": 30.31,
                "clouds": 100,
                "visibility": 10000,
                "wind_speed": 18.3,
                "wind_deg": 195,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604786400,
                "temp": 72.27,
                "feels_like": 58.28,
                "pressure": 998,
                "humidity": 21,
                "dew_point": 30.42,
                "clouds": 80,
                "visibility": 10000,
                "wind_speed": 18.03,
                "wind_deg": 191,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604790000,
                "temp": 70.81,
                "feels_like": 57.74,
                "pressure": 999,
                "humidity": 23,
                "dew_point": 31.32,
                "clouds": 63,
                "visibility": 10000,
                "wind_speed": 16.64,
                "wind_deg": 191,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0
            },
            {
                "dt": 1604793600,
                "temp": 67.64,
                "feels_like": 58.21,
                "pressure": 999,
                "humidity": 25,
                "dew_point": 30.78,
                "clouds": 50,
                "visibility": 10000,
                "wind_speed": 10.04,
                "wind_deg": 197,
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
                "dt": 1604797200,
                "temp": 65.89,
                "feels_like": 57.13,
                "pressure": 999,
                "humidity": 27,
                "dew_point": 29.08,
                "clouds": 4,
                "visibility": 10000,
                "wind_speed": 8.95,
                "wind_deg": 195,
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
                "dt": 1604800800,
                "temp": 64.27,
                "feels_like": 55.36,
                "pressure": 998,
                "humidity": 28,
                "dew_point": 29.34,
                "clouds": 4,
                "visibility": 10000,
                "wind_speed": 9.08,
                "wind_deg": 209,
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
                "dt": 1604804400,
                "temp": 62.51,
                "feels_like": 52.97,
                "pressure": 997,
                "humidity": 31,
                "dew_point": 31.55,
                "clouds": 3,
                "visibility": 10000,
                "wind_speed": 10.47,
                "wind_deg": 190,
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
                "dt": 1604808000,
                "temp": 60.84,
                "feels_like": 53.11,
                "pressure": 996,
                "humidity": 33,
                "dew_point": 32.16,
                "clouds": 2,
                "visibility": 10000,
                "wind_speed": 7.25,
                "wind_deg": 183,
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
                "dt": 1604811600,
                "temp": 60.12,
                "feels_like": 50.02,
                "pressure": 995,
                "humidity": 34,
                "dew_point": 32.16,
                "clouds": 2,
                "visibility": 10000,
                "wind_speed": 11.5,
                "wind_deg": 171,
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
                "dt": 1604815200,
                "temp": 59.09,
                "feels_like": 49.86,
                "pressure": 993,
                "humidity": 36,
                "dew_point": 32.56,
                "clouds": 1,
                "visibility": 10000,
                "wind_speed": 10.09,
                "wind_deg": 180,
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
                "dt": 1604818800,
                "temp": 57.94,
                "feels_like": 50.5,
                "pressure": 992,
                "humidity": 39,
                "dew_point": 33.3,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 7.16,
                "wind_deg": 223,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0.12
            },
            {
                "dt": 1604822400,
                "temp": 58.03,
                "feels_like": 48.16,
                "pressure": 991,
                "humidity": 40,
                "dew_point": 34.14,
                "clouds": 48,
                "visibility": 10000,
                "wind_speed": 11.65,
                "wind_deg": 176,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03n"
                    }
                ],
                "pop": 0.16
            },
            {
                "dt": 1604826000,
                "temp": 57.69,
                "feels_like": 47.17,
                "pressure": 990,
                "humidity": 43,
                "dew_point": 35.85,
                "clouds": 65,
                "visibility": 10000,
                "wind_speed": 13.24,
                "wind_deg": 193,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.24
            },
            {
                "dt": 1604829600,
                "temp": 55.85,
                "feels_like": 46.96,
                "pressure": 991,
                "humidity": 50,
                "dew_point": 37.56,
                "clouds": 72,
                "visibility": 10000,
                "wind_speed": 11.03,
                "wind_deg": 206,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.44
            },
            {
                "dt": 1604833200,
                "temp": 56.57,
                "feels_like": 47.53,
                "pressure": 993,
                "humidity": 44,
                "dew_point": 35.15,
                "clouds": 77,
                "visibility": 10000,
                "wind_speed": 10.49,
                "wind_deg": 206,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.48
            },
            {
                "dt": 1604836800,
                "temp": 55.83,
                "feels_like": 49.84,
                "pressure": 995,
                "humidity": 40,
                "dew_point": 32.02,
                "clouds": 81,
                "visibility": 10000,
                "wind_speed": 4.27,
                "wind_deg": 234,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04n"
                    }
                ],
                "pop": 0.44
            },
            {
                "dt": 1604840400,
                "temp": 52.79,
                "feels_like": 34.86,
                "pressure": 997,
                "humidity": 37,
                "dew_point": 14.83,
                "clouds": 4,
                "visibility": 10000,
                "wind_speed": 24.36,
                "wind_deg": 213,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604844000,
                "temp": 50.32,
                "feels_like": 35.89,
                "pressure": 1000,
                "humidity": 39,
                "dew_point": 11.55,
                "clouds": 2,
                "visibility": 10000,
                "wind_speed": 17.94,
                "wind_deg": 199,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604847600,
                "temp": 48.9,
                "feels_like": 40.01,
                "pressure": 1001,
                "humidity": 42,
                "dew_point": 13.32,
                "clouds": 1,
                "visibility": 10000,
                "wind_speed": 8.21,
                "wind_deg": 257,
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
                "dt": 1604851200,
                "temp": 50.52,
                "feels_like": 45.7,
                "pressure": 1002,
                "humidity": 40,
                "dew_point": 14.67,
                "clouds": 1,
                "visibility": 10000,
                "wind_speed": 1.05,
                "wind_deg": 61,
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
                "dt": 1604854800,
                "temp": 52.39,
                "feels_like": 44.4,
                "pressure": 1002,
                "humidity": 36,
                "dew_point": 12.52,
                "clouds": 1,
                "visibility": 10000,
                "wind_speed": 6.49,
                "wind_deg": 115,
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
                "dt": 1604858400,
                "temp": 54.43,
                "feels_like": 45.45,
                "pressure": 1002,
                "humidity": 31,
                "dew_point": 7.84,
                "clouds": 1,
                "visibility": 10000,
                "wind_speed": 7.87,
                "wind_deg": 151,
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
                "temp": 57.34,
                "feels_like": 48.11,
                "pressure": 1002,
                "humidity": 26,
                "dew_point": 1.98,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 8.01,
                "wind_deg": 192,
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
                "temp": 59.27,
                "feels_like": 47.79,
                "pressure": 1001,
                "humidity": 24,
                "dew_point": 1.56,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 11.97,
                "wind_deg": 221,
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
                "temp": 59.68,
                "feels_like": 48.33,
                "pressure": 1001,
                "humidity": 24,
                "dew_point": 2.79,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 11.81,
                "wind_deg": 212,
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
                "temp": 59.65,
                "feels_like": 48.06,
                "pressure": 1001,
                "humidity": 25,
                "dew_point": 4.44,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 12.39,
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
                "dt": 1604876400,
                "temp": 58.44,
                "feels_like": 45.99,
                "pressure": 1002,
                "humidity": 27,
                "dew_point": 7.47,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 14.09,
                "wind_deg": 202,
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
                "temp": 55.31,
                "feels_like": 40.55,
                "pressure": 1004,
                "humidity": 31,
                "dew_point": 9.88,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 18.3,
                "wind_deg": 205,
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
                "temp": 52.79,
                "feels_like": 37.11,
                "pressure": 1005,
                "humidity": 35,
                "dew_point": 10.89,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 20.07,
                "wind_deg": 216,
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
                "temp": 52.11,
                "feels_like": 38.66,
                "pressure": 1005,
                "humidity": 36,
                "dew_point": 10.92,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 16.13,
                "wind_deg": 217,
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
                "temp": 50.9,
                "feels_like": 39.65,
                "pressure": 1004,
                "humidity": 38,
                "dew_point": 12,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 12.26,
                "wind_deg": 220,
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
                "temp": 50.45,
                "feels_like": 41.94,
                "pressure": 1004,
                "humidity": 39,
                "dew_point": 12.83,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 7.47,
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
                "dt": 1604898000,
                "temp": 49.3,
                "feels_like": 41.9,
                "pressure": 1005,
                "humidity": 41,
                "dew_point": 13.28,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 5.53,
                "wind_deg": 184,
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
                "temp": 47.89,
                "feels_like": 40.86,
                "pressure": 1004,
                "humidity": 43,
                "dew_point": 13.78,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 4.85,
                "wind_deg": 181,
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
                "dt": 1604905200,
                "temp": 47.46,
                "feels_like": 42.15,
                "pressure": 1004,
                "humidity": 44,
                "dew_point": 14.18,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 1.81,
                "wind_deg": 241,
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
                "dt": 1604908800,
                "temp": 45.9,
                "feels_like": 39.51,
                "pressure": 1004,
                "humidity": 47,
                "dew_point": 13.82,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 3.76,
                "wind_deg": 72,
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
                "dt": 1604912400,
                "temp": 44.26,
                "feels_like": 37.15,
                "pressure": 1005,
                "humidity": 50,
                "dew_point": 13.46,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 5.06,
                "wind_deg": 28,
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
                "dt": 1604916000,
                "temp": 43.43,
                "feels_like": 32.95,
                "pressure": 1005,
                "humidity": 52,
                "dew_point": 14.5,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 11.07,
                "wind_deg": 348,
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
                "dt": 1604919600,
                "temp": 42.21,
                "feels_like": 30.29,
                "pressure": 1006,
                "humidity": 56,
                "dew_point": 17.19,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 13.76,
                "wind_deg": 341,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604923200,
                "temp": 40.84,
                "feels_like": 27.86,
                "pressure": 1007,
                "humidity": 60,
                "dew_point": 18.25,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 15.75,
                "wind_deg": 7,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604926800,
                "temp": 38.25,
                "feels_like": 28.53,
                "pressure": 1008,
                "humidity": 70,
                "dew_point": 21.9,
                "clouds": 0,
                "visibility": 10000,
                "wind_speed": 10.25,
                "wind_deg": 26,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01n"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604930400,
                "temp": 35.91,
                "feels_like": 26.83,
                "pressure": 1010,
                "humidity": 78,
                "dew_point": 23.81,
                "clouds": 49,
                "visibility": 10000,
                "wind_speed": 9.19,
                "wind_deg": 39,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03d"
                    }
                ],
                "pop": 0.04
            },
            {
                "dt": 1604934000,
                "temp": 34.86,
                "feels_like": 26.53,
                "pressure": 1010,
                "humidity": 81,
                "dew_point": 23.32,
                "clouds": 53,
                "visibility": 10000,
                "wind_speed": 7.85,
                "wind_deg": 60,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.12
            },
            {
                "dt": 1604937600,
                "temp": 35.74,
                "feels_like": 28.65,
                "pressure": 1010,
                "humidity": 77,
                "dew_point": 21.92,
                "clouds": 65,
                "visibility": 10000,
                "wind_speed": 5.57,
                "wind_deg": 41,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.16
            },
            {
                "dt": 1604941200,
                "temp": 37.45,
                "feels_like": 29.61,
                "pressure": 1009,
                "humidity": 71,
                "dew_point": 21.02,
                "clouds": 71,
                "visibility": 10000,
                "wind_speed": 6.85,
                "wind_deg": 34,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.2
            },
            {
                "dt": 1604944800,
                "temp": 39.06,
                "feels_like": 31.35,
                "pressure": 1008,
                "humidity": 67,
                "dew_point": 20.53,
                "clouds": 59,
                "visibility": 10000,
                "wind_speed": 6.6,
                "wind_deg": 27,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "pop": 0.16
            },
            {
                "dt": 1604948400,
                "temp": 40.69,
                "feels_like": 32.7,
                "pressure": 1008,
                "humidity": 62,
                "dew_point": 20.5,
                "clouds": 13,
                "visibility": 10000,
                "wind_speed": 7.02,
                "wind_deg": 41,
                "weather": [
                    {
                        "id": 801,
                        "main": "Clouds",
                        "description": "few clouds",
                        "icon": "02d"
                    }
                ],
                "pop": 0.23
            }
        ],
        "daily": [
            {
                "dt": 1604772000,
                "sunrise": 1604756164,
                "sunset": 1604793080,
                "temp": {
                    "day": 71.38,
                    "min": 56.71,
                    "max": 72.12,
                    "night": 59.18,
                    "eve": 68.41,
                    "morn": 56.71
                },
                "feels_like": {
                    "day": 59.04,
                    "night": 49.96,
                    "eve": 59.07,
                    "morn": 47.43
                },
                "pressure": 995,
                "humidity": 22,
                "dew_point": 30.78,
                "wind_speed": 15.21,
                "wind_deg": 195,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": 100,
                "pop": 0,
                "uvi": 3.29
            },
            {
                "dt": 1604858400,
                "sunrise": 1604842634,
                "sunset": 1604879421,
                "temp": {
                    "day": 54.43,
                    "min": 47.89,
                    "max": 59.68,
                    "night": 47.89,
                    "eve": 55.31,
                    "morn": 55.83
                },
                "feels_like": {
                    "day": 45.45,
                    "night": 40.86,
                    "eve": 40.55,
                    "morn": 49.84
                },
                "pressure": 1002,
                "humidity": 31,
                "dew_point": 7.84,
                "wind_speed": 7.87,
                "wind_deg": 151,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "clouds": 1,
                "pop": 0.44,
                "uvi": 2.79
            },
            {
                "dt": 1604944800,
                "sunrise": 1604929103,
                "sunset": 1604965763,
                "temp": {
                    "day": 39.06,
                    "min": 32.56,
                    "max": 44.26,
                    "night": 32.56,
                    "eve": 36.81,
                    "morn": 40.84
                },
                "feels_like": {
                    "day": 31.35,
                    "night": 26.28,
                    "eve": 27.81,
                    "morn": 27.86
                },
                "pressure": 1008,
                "humidity": 67,
                "dew_point": 20.53,
                "wind_speed": 6.6,
                "wind_deg": 27,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": 59,
                "pop": 0.75,
                "uvi": 2.55
            },
            {
                "dt": 1605031200,
                "sunrise": 1605015573,
                "sunset": 1605052108,
                "temp": {
                    "day": 44.02,
                    "min": 31.57,
                    "max": 47.82,
                    "night": 39.33,
                    "eve": 46.38,
                    "morn": 32.67
                },
                "feels_like": {
                    "day": 38.07,
                    "night": 32.47,
                    "eve": 41.4,
                    "morn": 26.26
                },
                "pressure": 1011,
                "humidity": 45,
                "dew_point": 5.72,
                "wind_speed": 2.44,
                "wind_deg": 173,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "clouds": 2,
                "pop": 0,
                "uvi": 2.38
            },
            {
                "dt": 1605117600,
                "sunrise": 1605102042,
                "sunset": 1605138454,
                "temp": {
                    "day": 42.24,
                    "min": 34.41,
                    "max": 46.63,
                    "night": 35.56,
                    "eve": 43.9,
                    "morn": 34.41
                },
                "feels_like": {
                    "day": 36.19,
                    "night": 28,
                    "eve": 35.38,
                    "morn": 28.42
                },
                "pressure": 1011,
                "humidity": 52,
                "dew_point": 11.53,
                "wind_speed": 2.98,
                "wind_deg": 28,
                "weather": [
                    {
                        "id": 802,
                        "main": "Clouds",
                        "description": "scattered clouds",
                        "icon": "03d"
                    }
                ],
                "clouds": 30,
                "pop": 0.04,
                "uvi": 2.44
            },
            {
                "dt": 1605204000,
                "sunrise": 1605188512,
                "sunset": 1605224802,
                "temp": {
                    "day": 41.83,
                    "min": 33.98,
                    "max": 44.02,
                    "night": 35.92,
                    "eve": 41.72,
                    "morn": 33.98
                },
                "feels_like": {
                    "day": 35.67,
                    "night": 28.09,
                    "eve": 35.06,
                    "morn": 26.4
                },
                "pressure": 1017,
                "humidity": 49,
                "dew_point": 5.99,
                "wind_speed": 2.8,
                "wind_deg": 161,
                "weather": [
                    {
                        "id": 800,
                        "main": "Clear",
                        "description": "clear sky",
                        "icon": "01d"
                    }
                ],
                "clouds": 0,
                "pop": 0.04,
                "uvi": 2.28
            },
            {
                "dt": 1605290400,
                "sunrise": 1605274981,
                "sunset": 1605311151,
                "temp": {
                    "day": 47.34,
                    "min": 34.61,
                    "max": 52.05,
                    "night": 41.29,
                    "eve": 48.33,
                    "morn": 34.61
                },
                "feels_like": {
                    "day": 41.68,
                    "night": 33.93,
                    "eve": 42.06,
                    "morn": 27.82
                },
                "pressure": 1014,
                "humidity": 29,
                "dew_point": -12.55,
                "wind_speed": 0.65,
                "wind_deg": 59,
                "weather": [
                    {
                        "id": 803,
                        "main": "Clouds",
                        "description": "broken clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": 58,
                "pop": 0,
                "uvi": 2.23
            },
            {
                "dt": 1605376800,
                "sunrise": 1605361450,
                "sunset": 1605397503,
                "temp": {
                    "day": 50.45,
                    "min": 37.63,
                    "max": 58.96,
                    "night": 45.46,
                    "eve": 53.02,
                    "morn": 37.63
                },
                "feels_like": {
                    "day": 42.46,
                    "night": 38.88,
                    "eve": 46,
                    "morn": 30.38
                },
                "pressure": 1007,
                "humidity": 37,
                "dew_point": 9.75,
                "wind_speed": 6.26,
                "wind_deg": 189,
                "weather": [
                    {
                        "id": 804,
                        "main": "Clouds",
                        "description": "overcast clouds",
                        "icon": "04d"
                    }
                ],
                "clouds": 99,
                "pop": 0.11,
                "uvi": 2.62
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
# require 'rails_helper'

# RSpec.describe 'Forecast PORO' do
#   it 'creates a poro for a forecast' do
#     attr = {
#         "lat": 39.74,
#         "lon": -104.99,
#         "timezone": "America/Denver",
#         "timezone_offset": -25200,
#         "current": {
#             "dt": 1604720083,
#             "sunrise": 1604669695,
#             "sunset": 1604706740,
#             "temp": 286.85,
#             "feels_like": 283.79,
#             "pressure": 1008,
#             "humidity": 39,
#             "dew_point": 273.16,
#             "uvi": 3.29,
#             "clouds": 100,
#             "visibility": 10000,
#             "wind_speed": 1.53,
#             "wind_deg": 182,
#             "weather": [
#                 {
#                     "id": 804,
#                     "main": "Clouds",
#                     "description": "overcast clouds",
#                     "icon": "04n"
#                 }
#             ]
#         },
#         "hourly": [
#             {
#                 "dt": 1604718000,
#                 "temp": 286.85,
#                 "feels_like": 283.79,
#                 "pressure": 1008,
#                 "humidity": 39,
#                 "dew_point": 273.16,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 1.53,
#                 "wind_deg": 182,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604721600,
#                 "temp": 288.35,
#                 "feels_like": 284.86,
#                 "pressure": 1008,
#                 "humidity": 33,
#                 "dew_point": 272.31,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 1.95,
#                 "wind_deg": 198,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604725200,
#                 "temp": 288.95,
#                 "feels_like": 285.74,
#                 "pressure": 1009,
#                 "humidity": 31,
#                 "dew_point": 272.02,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 1.49,
#                 "wind_deg": 199,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604728800,
#                 "temp": 288.89,
#                 "feels_like": 285.68,
#                 "pressure": 1010,
#                 "humidity": 30,
#                 "dew_point": 271.58,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 1.39,
#                 "wind_deg": 209,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604732400,
#                 "temp": 288.82,
#                 "feels_like": 285.34,
#                 "pressure": 1009,
#                 "humidity": 31,
#                 "dew_point": 271.92,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 1.85,
#                 "wind_deg": 204,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604736000,
#                 "temp": 288.25,
#                 "feels_like": 284.65,
#                 "pressure": 1008,
#                 "humidity": 32,
#                 "dew_point": 268.69,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 2.01,
#                 "wind_deg": 202,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604739600,
#                 "temp": 287.98,
#                 "feels_like": 284.06,
#                 "pressure": 1008,
#                 "humidity": 33,
#                 "dew_point": 268.97,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 2.5,
#                 "wind_deg": 199,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604743200,
#                 "temp": 287.39,
#                 "feels_like": 283.31,
#                 "pressure": 1008,
#                 "humidity": 35,
#                 "dew_point": 269.19,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 2.79,
#                 "wind_deg": 208,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604746800,
#                 "temp": 287.35,
#                 "feels_like": 283.09,
#                 "pressure": 1008,
#                 "humidity": 35,
#                 "dew_point": 269.43,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 3.04,
#                 "wind_deg": 204,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604750400,
#                 "temp": 287.43,
#                 "feels_like": 282.9,
#                 "pressure": 1008,
#                 "humidity": 35,
#                 "dew_point": 270.07,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 3.44,
#                 "wind_deg": 201,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604754000,
#                 "temp": 287.42,
#                 "feels_like": 282.96,
#                 "pressure": 1007,
#                 "humidity": 35,
#                 "dew_point": 270.36,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 3.33,
#                 "wind_deg": 206,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604757600,
#                 "temp": 287.53,
#                 "feels_like": 282.99,
#                 "pressure": 1007,
#                 "humidity": 35,
#                 "dew_point": 270.68,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 3.47,
#                 "wind_deg": 200,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604761200,
#                 "temp": 288.16,
#                 "feels_like": 283.52,
#                 "pressure": 1006,
#                 "humidity": 34,
#                 "dew_point": 271.03,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 3.65,
#                 "wind_deg": 209,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604764800,
#                 "temp": 289.6,
#                 "feels_like": 285.23,
#                 "pressure": 1006,
#                 "humidity": 31,
#                 "dew_point": 271.33,
#                 "clouds": 99,
#                 "visibility": 10000,
#                 "wind_speed": 3.25,
#                 "wind_deg": 218,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604768400,
#                 "temp": 291.43,
#                 "feels_like": 286.73,
#                 "pressure": 1005,
#                 "humidity": 28,
#                 "dew_point": 272.03,
#                 "clouds": 99,
#                 "visibility": 10000,
#                 "wind_speed": 3.76,
#                 "wind_deg": 207,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604772000,
#                 "temp": 293.63,
#                 "feels_like": 288.14,
#                 "pressure": 1004,
#                 "humidity": 25,
#                 "dew_point": 272.62,
#                 "clouds": 99,
#                 "visibility": 10000,
#                 "wind_speed": 4.96,
#                 "wind_deg": 199,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604775600,
#                 "temp": 294.88,
#                 "feels_like": 288.77,
#                 "pressure": 1002,
#                 "humidity": 23,
#                 "dew_point": 272.28,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 5.82,
#                 "wind_deg": 190,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604779200,
#                 "temp": 295.54,
#                 "feels_like": 289.17,
#                 "pressure": 1001,
#                 "humidity": 22,
#                 "dew_point": 272.06,
#                 "clouds": 100,
#                 "visibility": 10000,
#                 "wind_speed": 6.19,
#                 "wind_deg": 183,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604782800,
#                 "temp": 296.16,
#                 "feels_like": 289.36,
#                 "pressure": 1000,
#                 "humidity": 21,
#                 "dew_point": 272.02,
#                 "clouds": 68,
#                 "visibility": 10000,
#                 "wind_speed": 6.77,
#                 "wind_deg": 189,
#                 "weather": [
#                     {
#                         "id": 803,
#                         "main": "Clouds",
#                         "description": "broken clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604786400,
#                 "temp": 295.84,
#                 "feels_like": 288.53,
#                 "pressure": 999,
#                 "humidity": 21,
#                 "dew_point": 271.86,
#                 "clouds": 70,
#                 "visibility": 10000,
#                 "wind_speed": 7.45,
#                 "wind_deg": 194,
#                 "weather": [
#                     {
#                         "id": 803,
#                         "main": "Clouds",
#                         "description": "broken clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604790000,
#                 "temp": 294.86,
#                 "feels_like": 287.59,
#                 "pressure": 999,
#                 "humidity": 22,
#                 "dew_point": 271.43,
#                 "clouds": 57,
#                 "visibility": 10000,
#                 "wind_speed": 7.36,
#                 "wind_deg": 194,
#                 "weather": [
#                     {
#                         "id": 803,
#                         "main": "Clouds",
#                         "description": "broken clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604793600,
#                 "temp": 293.15,
#                 "feels_like": 288.24,
#                 "pressure": 999,
#                 "humidity": 25,
#                 "dew_point": 271.43,
#                 "clouds": 48,
#                 "visibility": 10000,
#                 "wind_speed": 4.05,
#                 "wind_deg": 195,
#                 "weather": [
#                     {
#                         "id": 802,
#                         "main": "Clouds",
#                         "description": "scattered clouds",
#                         "icon": "03n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604797200,
#                 "temp": 292.13,
#                 "feels_like": 286.16,
#                 "pressure": 999,
#                 "humidity": 27,
#                 "dew_point": 271.57,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 5.6,
#                 "wind_deg": 187,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604800800,
#                 "temp": 291.13,
#                 "feels_like": 285.58,
#                 "pressure": 999,
#                 "humidity": 28,
#                 "dew_point": 271.75,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 4.93,
#                 "wind_deg": 188,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604804400,
#                 "temp": 290.03,
#                 "feels_like": 285.21,
#                 "pressure": 998,
#                 "humidity": 31,
#                 "dew_point": 271.92,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 3.98,
#                 "wind_deg": 182,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604808000,
#                 "temp": 289.12,
#                 "feels_like": 284.24,
#                 "pressure": 997,
#                 "humidity": 33,
#                 "dew_point": 272.18,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 4.08,
#                 "wind_deg": 195,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604811600,
#                 "temp": 288.53,
#                 "feels_like": 284.04,
#                 "pressure": 996,
#                 "humidity": 34,
#                 "dew_point": 272.45,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 3.49,
#                 "wind_deg": 181,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604815200,
#                 "temp": 288.25,
#                 "feels_like": 283.93,
#                 "pressure": 994,
#                 "humidity": 36,
#                 "dew_point": 273.32,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 3.37,
#                 "wind_deg": 177,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604818800,
#                 "temp": 287.92,
#                 "feels_like": 282.91,
#                 "pressure": 993,
#                 "humidity": 38,
#                 "dew_point": 273.91,
#                 "clouds": 95,
#                 "visibility": 10000,
#                 "wind_speed": 4.44,
#                 "wind_deg": 176,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0.04
#             },
#             {
#                 "dt": 1604822400,
#                 "temp": 287.69,
#                 "feels_like": 282.72,
#                 "pressure": 991,
#                 "humidity": 40,
#                 "dew_point": 274.4,
#                 "clouds": 97,
#                 "visibility": 10000,
#                 "wind_speed": 4.5,
#                 "wind_deg": 182,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604826000,
#                 "temp": 287.55,
#                 "feels_like": 280.27,
#                 "pressure": 991,
#                 "humidity": 43,
#                 "dew_point": 275.33,
#                 "clouds": 85,
#                 "visibility": 10000,
#                 "wind_speed": 8,
#                 "wind_deg": 182,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0.16
#             },
#             {
#                 "dt": 1604829600,
#                 "temp": 287.34,
#                 "feels_like": 282.24,
#                 "pressure": 991,
#                 "humidity": 45,
#                 "dew_point": 275.69,
#                 "clouds": 87,
#                 "visibility": 10000,
#                 "wind_speed": 5,
#                 "wind_deg": 205,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0.39
#             },
#             {
#                 "dt": 1604833200,
#                 "temp": 286.24,
#                 "feels_like": 279,
#                 "pressure": 993,
#                 "humidity": 48,
#                 "dew_point": 275.76,
#                 "clouds": 90,
#                 "visibility": 10000,
#                 "wind_speed": 8.03,
#                 "wind_deg": 195,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0.48
#             },
#             {
#                 "dt": 1604836800,
#                 "temp": 285.75,
#                 "feels_like": 279.82,
#                 "pressure": 995,
#                 "humidity": 45,
#                 "dew_point": 274.21,
#                 "clouds": 91,
#                 "visibility": 10000,
#                 "wind_speed": 5.84,
#                 "wind_deg": 330,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0.51
#             },
#             {
#                 "dt": 1604840400,
#                 "temp": 283.49,
#                 "feels_like": 279.5,
#                 "pressure": 997,
#                 "humidity": 43,
#                 "dew_point": 267.07,
#                 "clouds": 96,
#                 "visibility": 10000,
#                 "wind_speed": 2.53,
#                 "wind_deg": 336,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04n"
#                     }
#                 ],
#                 "pop": 0.12
#             },
#             {
#                 "dt": 1604844000,
#                 "temp": 283.36,
#                 "feels_like": 279.34,
#                 "pressure": 999,
#                 "humidity": 43,
#                 "dew_point": 266.58,
#                 "clouds": 87,
#                 "visibility": 10000,
#                 "wind_speed": 2.55,
#                 "wind_deg": 174,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0.16
#             },
#             {
#                 "dt": 1604847600,
#                 "temp": 283.22,
#                 "feels_like": 278.17,
#                 "pressure": 1001,
#                 "humidity": 41,
#                 "dew_point": 263.7,
#                 "clouds": 59,
#                 "visibility": 10000,
#                 "wind_speed": 3.88,
#                 "wind_deg": 188,
#                 "weather": [
#                     {
#                         "id": 803,
#                         "main": "Clouds",
#                         "description": "broken clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "pop": 0.12
#             },
#             {
#                 "dt": 1604851200,
#                 "temp": 283.65,
#                 "feels_like": 278.64,
#                 "pressure": 1002,
#                 "humidity": 37,
#                 "dew_point": 260.74,
#                 "clouds": 44,
#                 "visibility": 10000,
#                 "wind_speed": 3.66,
#                 "wind_deg": 229,
#                 "weather": [
#                     {
#                         "id": 802,
#                         "main": "Clouds",
#                         "description": "scattered clouds",
#                         "icon": "03d"
#                     }
#                 ],
#                 "pop": 0.08
#             },
#             {
#                 "dt": 1604854800,
#                 "temp": 284.62,
#                 "feels_like": 279.45,
#                 "pressure": 1002,
#                 "humidity": 33,
#                 "dew_point": 258.83,
#                 "clouds": 35,
#                 "visibility": 10000,
#                 "wind_speed": 3.78,
#                 "wind_deg": 204,
#                 "weather": [
#                     {
#                         "id": 802,
#                         "main": "Clouds",
#                         "description": "scattered clouds",
#                         "icon": "03d"
#                     }
#                 ],
#                 "pop": 0.04
#             },
#             {
#                 "dt": 1604858400,
#                 "temp": 285.8,
#                 "feels_like": 280.01,
#                 "pressure": 1002,
#                 "humidity": 30,
#                 "dew_point": 258.16,
#                 "clouds": 30,
#                 "visibility": 10000,
#                 "wind_speed": 4.63,
#                 "wind_deg": 193,
#                 "weather": [
#                     {
#                         "id": 802,
#                         "main": "Clouds",
#                         "description": "scattered clouds",
#                         "icon": "03d"
#                     }
#                 ],
#                 "pop": 0.04
#             },
#             {
#                 "dt": 1604862000,
#                 "temp": 287.41,
#                 "feels_like": 281.6,
#                 "pressure": 1002,
#                 "humidity": 26,
#                 "dew_point": 256.89,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 4.57,
#                 "wind_deg": 201,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604865600,
#                 "temp": 288.02,
#                 "feels_like": 280.79,
#                 "pressure": 1002,
#                 "humidity": 25,
#                 "dew_point": 257.04,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 6.61,
#                 "wind_deg": 218,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604869200,
#                 "temp": 288.23,
#                 "feels_like": 281.39,
#                 "pressure": 1002,
#                 "humidity": 25,
#                 "dew_point": 257.89,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 6.08,
#                 "wind_deg": 221,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604872800,
#                 "temp": 288.12,
#                 "feels_like": 282.04,
#                 "pressure": 1002,
#                 "humidity": 26,
#                 "dew_point": 258.92,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 5.06,
#                 "wind_deg": 214,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604876400,
#                 "temp": 287.56,
#                 "feels_like": 280.81,
#                 "pressure": 1002,
#                 "humidity": 28,
#                 "dew_point": 260.29,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 6.09,
#                 "wind_deg": 203,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604880000,
#                 "temp": 286.17,
#                 "feels_like": 278.4,
#                 "pressure": 1004,
#                 "humidity": 31,
#                 "dew_point": 261.26,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 7.57,
#                 "wind_deg": 197,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604883600,
#                 "temp": 284.98,
#                 "feels_like": 277.19,
#                 "pressure": 1005,
#                 "humidity": 34,
#                 "dew_point": 261.65,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 7.63,
#                 "wind_deg": 206,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             },
#             {
#                 "dt": 1604887200,
#                 "temp": 284.06,
#                 "feels_like": 276.98,
#                 "pressure": 1005,
#                 "humidity": 37,
#                 "dew_point": 262.21,
#                 "clouds": 0,
#                 "visibility": 10000,
#                 "wind_speed": 6.67,
#                 "wind_deg": 206,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01n"
#                     }
#                 ],
#                 "pop": 0
#             }
#         ],
#         "daily": [
#             {
#                 "dt": 1604685600,
#                 "sunrise": 1604669695,
#                 "sunset": 1604706740,
#                 "temp": {
#                     "day": 292.32,
#                     "min": 285.8,
#                     "max": 295.13,
#                     "night": 287.91,
#                     "eve": 291.66,
#                     "morn": 285.8
#                 },
#                 "feels_like": {
#                     "day": 289.54,
#                     "night": 284.82,
#                     "eve": 288.55,
#                     "morn": 281.57
#                 },
#                 "pressure": 1010,
#                 "humidity": 22,
#                 "dew_point": 263.84,
#                 "wind_speed": 0.56,
#                 "wind_deg": 100,
#                 "weather": [
#                     {
#                         "id": 803,
#                         "main": "Clouds",
#                         "description": "broken clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "clouds": 57,
#                 "pop": 0,
#                 "uvi": 3.29
#             },
#             {
#                 "dt": 1604772000,
#                 "sunrise": 1604756164,
#                 "sunset": 1604793080,
#                 "temp": {
#                     "day": 293.63,
#                     "min": 287.39,
#                     "max": 296.16,
#                     "night": 288.25,
#                     "eve": 293.15,
#                     "morn": 287.39
#                 },
#                 "feels_like": {
#                     "day": 288.14,
#                     "night": 283.93,
#                     "eve": 288.24,
#                     "morn": 282.85
#                 },
#                 "pressure": 1004,
#                 "humidity": 25,
#                 "dew_point": 272.62,
#                 "wind_speed": 4.96,
#                 "wind_deg": 199,
#                 "weather": [
#                     {
#                         "id": 804,
#                         "main": "Clouds",
#                         "description": "overcast clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "clouds": 99,
#                 "pop": 0,
#                 "uvi": 2.79
#             },
#             {
#                 "dt": 1604858400,
#                 "sunrise": 1604842634,
#                 "sunset": 1604879421,
#                 "temp": {
#                     "day": 285.8,
#                     "min": 281.92,
#                     "max": 288.23,
#                     "night": 281.92,
#                     "eve": 286.17,
#                     "morn": 285.75
#                 },
#                 "feels_like": {
#                     "day": 280.01,
#                     "night": 278.05,
#                     "eve": 278.4,
#                     "morn": 279.82
#                 },
#                 "pressure": 1002,
#                 "humidity": 30,
#                 "dew_point": 258.16,
#                 "wind_speed": 4.63,
#                 "wind_deg": 193,
#                 "weather": [
#                     {
#                         "id": 500,
#                         "main": "Rain",
#                         "description": "light rain",
#                         "icon": "10d"
#                     }
#                 ],
#                 "clouds": 30,
#                 "pop": 0.51,
#                 "rain": 0.13,
#                 "uvi": 2.55
#             },
#             {
#                 "dt": 1604944800,
#                 "sunrise": 1604929103,
#                 "sunset": 1604965763,
#                 "temp": {
#                     "day": 277.62,
#                     "min": 274.6,
#                     "max": 280.5,
#                     "night": 274.6,
#                     "eve": 275.34,
#                     "morn": 278.47
#                 },
#                 "feels_like": {
#                     "day": 272.71,
#                     "night": 271.45,
#                     "eve": 271.52,
#                     "morn": 271.77
#                 },
#                 "pressure": 1008,
#                 "humidity": 64,
#                 "dew_point": 267,
#                 "wind_speed": 3.84,
#                 "wind_deg": 14,
#                 "weather": [
#                     {
#                         "id": 803,
#                         "main": "Clouds",
#                         "description": "broken clouds",
#                         "icon": "04d"
#                     }
#                 ],
#                 "clouds": 63,
#                 "pop": 0.64,
#                 "uvi": 2.38
#             },
#             {
#                 "dt": 1605031200,
#                 "sunrise": 1605015573,
#                 "sunset": 1605052108,
#                 "temp": {
#                     "day": 278.88,
#                     "min": 273.96,
#                     "max": 281.96,
#                     "night": 277.11,
#                     "eve": 280.92,
#                     "morn": 273.96
#                 },
#                 "feels_like": {
#                     "day": 274.64,
#                     "night": 273.47,
#                     "eve": 277.86,
#                     "morn": 270.17
#                 },
#                 "pressure": 1009,
#                 "humidity": 50,
#                 "dew_point": 260.05,
#                 "wind_speed": 2.51,
#                 "wind_deg": 184,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "clouds": 1,
#                 "pop": 0,
#                 "uvi": 2.44
#             },
#             {
#                 "dt": 1605117600,
#                 "sunrise": 1605102042,
#                 "sunset": 1605138454,
#                 "temp": {
#                     "day": 277.78,
#                     "min": 273.13,
#                     "max": 279.65,
#                     "night": 273.13,
#                     "eve": 277.45,
#                     "morn": 275.04
#                 },
#                 "feels_like": {
#                     "day": 273.65,
#                     "night": 268.12,
#                     "eve": 272.22,
#                     "morn": 272.36
#                 },
#                 "pressure": 1011,
#                 "humidity": 56,
#                 "dew_point": 261.68,
#                 "wind_speed": 2.43,
#                 "wind_deg": 11,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "clouds": 0,
#                 "pop": 0.35,
#                 "uvi": 2.28
#             },
#             {
#                 "dt": 1605204000,
#                 "sunrise": 1605188512,
#                 "sunset": 1605224802,
#                 "temp": {
#                     "day": 277.11,
#                     "min": 273.01,
#                     "max": 278.42,
#                     "night": 274.05,
#                     "eve": 277.45,
#                     "morn": 273.01
#                 },
#                 "feels_like": {
#                     "day": 271.11,
#                     "night": 269.79,
#                     "eve": 272.21,
#                     "morn": 269.51
#                 },
#                 "pressure": 1023,
#                 "humidity": 49,
#                 "dew_point": 254.51,
#                 "wind_speed": 4.73,
#                 "wind_deg": 297,
#                 "weather": [
#                     {
#                         "id": 800,
#                         "main": "Clear",
#                         "description": "clear sky",
#                         "icon": "01d"
#                     }
#                 ],
#                 "clouds": 0,
#                 "pop": 0.2,
#                 "uvi": 2.23
#             },
#             {
#                 "dt": 1605290400,
#                 "sunrise": 1605274981,
#                 "sunset": 1605311151,
#                 "temp": {
#                     "day": 279.48,
#                     "min": 272.93,
#                     "max": 284.3,
#                     "night": 278.22,
#                     "eve": 281.7,
#                     "morn": 272.93
#                 },
#                 "feels_like": {
#                     "day": 275.57,
#                     "night": 274.21,
#                     "eve": 278.21,
#                     "morn": 268.54
#                 },
#                 "pressure": 1014,
#                 "humidity": 42,
#                 "dew_point": 255.19,
#                 "wind_speed": 1.76,
#                 "wind_deg": 177,
#                 "weather": [
#                     {
#                         "id": 802,
#                         "main": "Clouds",
#                         "description": "scattered clouds",
#                         "icon": "03d"
#                     }
#                 ],
#                 "clouds": 34,
#                 "pop": 0,
#                 "uvi": 2.62
#             }
#         ]
#     }

#     forecast = Forecast.new(attr)

#     expect(forecast.dt).to eq('11/06/2020 16:08 MST')
#     expect(forecast.sunrise).to eq('11/06/2020 06:34 MST')
#     expect(forecast.sunset).to eq('11/06/2020 16:52 MST')
#     expect(forecast.temp).to eq(64.13)
#     expect(forecast.feels_like).to eq(56.82)
#     expect(forecast.humidity).to eq(21)
#     expect(forecast.uvi).to eq(3.27)
#     expect(forecast.visibility).to eq(10000)
#     expect(forecast.description).to eq('broken clouds')
#     expect(forecast.icon).to eq('04d')
#   end
# end
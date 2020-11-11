### Sweater Weather

A JSON API that returns current, hourly, and daily forecasts for a city, a background image representing that city, and the ability to view road trip information between two destinations including travel time and weather.

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
* [Contact](#contact)

## About the Project

Sweater Weather is a JSON API compliant Rails App that consumes several APis including:

- MapQuest Directions API to find out the distance from the start location to the trail location
Documentation: https://developer.mapquest.com/documentation/directions-api/

- Open Weather Map API to find the forecast for the current location:
https://openweathermap.org/api

- Unsplash Images API:
https://unsplash.com/developers

Sweater Weather allows you to request current, hourly, and daily forecasts for a city, register and login, and receive an API key to access the application. Registered users can also view road trip information using a origin and destination city, including real time travel time information and destination weather at their time of arrival.

There are currently five user assessable endpoints including:

```GET /api/v1/forecast?location=denver,co ```
```GET /api/v1/backgrounds?location=denver,co ```
```POST /api/v1/users ```
```POST /api/v1/sessions ```
```POST /api/v1/road_trip ```

## Getting Started



## Contact


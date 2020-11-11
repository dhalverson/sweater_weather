### Sweater Weather

A JSON API that returns current, hourly, and daily forecasts for a city, a background image representing that city, and the ability to view road trip information between two destinations including travel time and weather.

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
* [Contact](#contact)

## About the Project

Sweater Weather is a JSON API compliant Rails App that consumes several APis including:

- MapQuest Directions API to find out the distance from the start location to the trail location:

https://developer.mapquest.com/documentation/directions-api/

- Open Weather Map API to find the forecast for the current location:

https://openweathermap.org/api

- Unsplash Images API:

https://unsplash.com/developers

Sweater Weather allows you to request current, hourly, and daily forecasts for a city, register and login, and receive an API key to access the application. Registered users can also view road trip information using a origin and destination city, including real time travel time information and destination weather at their time of arrival.

There are currently five user assessable endpoints including:

```GET /api/v1/forecast?location=denver,co ```

```GET /api/v1/backgrounds?location=denver,co ```

```POST /api/v1/users ```

Please include the params in body as follows:
```body:
{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```

```POST /api/v1/sessions ```

Please include the params in body as follows:
```body:
{
  "email": "whatever@example.com",
  "password": "password"
}
```

```POST /api/v1/road_trip ```

Please include the params in body as follows:
```body:
{
  "origin": "Denver,CO",
  "destination": "Pueblo,CO",
  "api_key": "jgn983hy48thw9begh98h4539h4"
}
```

## Getting Started

Currently not on a production server, please clone down a copy.

1. Install and update the gems using
```bundle install``

2. Run Figaro to store your keys
```bundle exec figaro install```

3. You will need API keys for Mapquest, OpenWeather, and Unsplash. These will need to be added to the application.yml file with the variables:
  - WEATHER_API_KEY
  - MAP_API_KEY
  - UNSPLASH_KEY
  
4. Using an API tool such as Postman, with your Rails Server running on Port 3000, run the above requests.

## Contact

This project was completed in five days using continuous deployment, TDD and is JSON 1.0 compliant. Questions? Comments? Feedback?

Daniel Halverson 
- [GitHub](https://github.com/dhalverson)
- [Linkedin](https://www.linkedin.com/in/daniel-halverson/)

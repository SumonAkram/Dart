class Weather {
  String city;
  double temperature;
  String description;

  Weather(this.city, this.temperature, this.description);
}

class WeatherApp {
  void displayWeather(Weather weather) {
    print('City: ${weather.city}');
    print('Temperature: ${weather.temperature}°C');
    print('Description: ${weather.description}');
  }
}

void main() {
  WeatherApp weatherApp = WeatherApp();

  Weather currentWeather = Weather('New York', 25.5, 'Sunny');
  weatherApp.displayWeather(currentWeather);

  Weather anotherWeather = Weather('London', 18.2, 'Cloudy');
  weatherApp.displayWeather(anotherWeather);
}

class WeatherModel {
  final String city;
  final String region;
  final String country;

  final double temperature;
  final double feelsLike;

  final String condition;
  final String icon;

  final int humidity;
  final double windSpeed;
  final double visibility;
  final double pressure;
  final double uvIndex;

  final int cloudCover;

  final String lastUpdated;

  WeatherModel({
    required this.city,
    required this.region,
    required this.country,
    required this.temperature,
    required this.feelsLike,
    required this.condition,
    required this.icon,
    required this.humidity,
    required this.windSpeed,
    required this.visibility,
    required this.pressure,
    required this.uvIndex,
    required this.cloudCover,
    required this.lastUpdated,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final location = json['location'];
    final current = json['current'];

    return WeatherModel(
      city: location['name'] ?? '',
      region: location['region'] ?? '',
      country: location['country'] ?? '',

      temperature: (current['temp_c'] as num).toDouble(),
      feelsLike: (current['feelslike_c'] as num).toDouble(),

      condition: current['condition']['text'] ?? '',
      icon: 'https:${current['condition']['icon']}',

      humidity: current['humidity'] ?? 0,
      windSpeed: (current['wind_kph'] as num).toDouble(),
      visibility: (current['vis_km'] as num).toDouble(),
      pressure: (current['pressure_mb'] as num).toDouble(),
      uvIndex: (current['uv'] as num).toDouble(),

      cloudCover: current['cloud'] ?? 0,

      lastUpdated: current['last_updated'] ?? '',
    );
  }
}
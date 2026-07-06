import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Basic Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static const Color primary = Color(0xFF3F8CFF);
  static const Color secondary = Color(0xFF6EC6FF);

  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xFFE8E8E8);

  static const Color glassColor = Color.fromRGBO(255, 255, 255, 0.20);

  static const Color borderColor = Color.fromRGBO(255, 255, 255, 0.25);

  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.15);

  static const Color cardColor = Color.fromRGBO(255, 255, 255, 0.15);

  /// Sunny
  static const List<Color> sunnyGradient = [
    Color(0xFFFF9800),
    Color(0xFFFFC107),
  ];

  /// Rain
  static const List<Color> rainyGradient = [
    Color(0xFF1565C0),
    Color(0xFF42A5F5),
  ];

  /// Cloudy
  static const List<Color> cloudyGradient = [
    Color(0xFF616161),
    Color(0xFF9E9E9E),
  ];

  /// Storm
  static const List<Color> stormGradient = [
    Color(0xFF512DA8),
    Color(0xFF7E57C2),
  ];

  /// Snow
  static const List<Color> snowGradient = [
    Color(0xFFB3E5FC),
    Color(0xFFE1F5FE),
  ];

  /// Mist
  static const List<Color> mistGradient = [
    Color(0xFF90A4AE),
    Color(0xFFCFD8DC),
  ];

  /// Wind
  static const List<Color> windGradient = [
    Color(0xFF00BCD4),
    Color(0xFF80DEEA),
  ];

  /// Default
  static const List<Color> defaultGradient = [
    Color(0xFF3F51B5),
    Color(0xFF64B5F6),
  ];

  /// Returns gradient based on weather condition
  static List<Color> getWeatherGradient(String condition) {
    final weather = condition.toLowerCase();

    if (weather.contains('sun') || weather.contains('clear')) {
      return sunnyGradient;
    }

    if (weather.contains('rain') || weather.contains('drizzle')) {
      return rainyGradient;
    }

    if (weather.contains('cloud') || weather.contains('overcast')) {
      return cloudyGradient;
    }

    if (weather.contains('storm') ||
        weather.contains('thunder') ||
        weather.contains('lightning')) {
      return stormGradient;
    }

    if (weather.contains('snow') ||
        weather.contains('blizzard') ||
        weather.contains('ice')) {
      return snowGradient;
    }

    if (weather.contains('mist') ||
        weather.contains('fog') ||
        weather.contains('haze')) {
      return mistGradient;
    }

    if (weather.contains('wind')) {
      return windGradient;
    }

    return defaultGradient;
  }
}
class AppConstants {
  AppConstants._();

  // App Information
  static const String appName = 'Weather Track';

  // WeatherAPI
  static const String apiKey = 'dfd4479ec92a4ab78bd162121260307';

  static const String baseUrl =
      'https://api.weatherapi.com/v1/current.json';

  // Default Location
  static const String defaultLocation = 'Chennai';

  // Search Hint
  static const String searchHint = 'Search city, state, country...';

  // Error Messages
  static const String noLocationFound = 'No matching location found';

  static const String internetError =
      'Please check your internet connection';

  static const String somethingWentWrong =
      'Something went wrong. Please try again.';

  // Greetings
  static const String morningGreeting = 'Good Morning';

  static const String afternoonGreeting = 'Good Afternoon';

  static const String eveningGreeting = 'Good Evening';

  // Weather Labels
  static const String temperature = 'Temperature';

  static const String humidity = 'Humidity';

  static const String feelsLike = 'Feels Like';

  static const String windSpeed = 'Wind Speed';

  static const String visibility = 'Visibility';

  static const String pressure = 'Pressure';

  static const String uvIndex = 'UV Index';

  static const String cloudCover = 'Cloud Cover';

  static const String lastUpdated = 'Last Updated';

  // Animation Duration
  static const Duration animationDuration =
      Duration(milliseconds: 400);

  // Border Radius
  static const double cardRadius = 24.0;

  // Padding
  static const double screenPadding = 20.0;

  static const double cardPadding = 18.0;

  // Spacing
  static const double smallSpacing = 8.0;

  static const double mediumSpacing = 16.0;

  static const double largeSpacing = 24.0;

  static const double extraLargeSpacing = 32.0;
}
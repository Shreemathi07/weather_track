import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const WeatherTrackApp());
}

class WeatherTrackApp extends StatelessWidget {
  const WeatherTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Track',
      home: HomeScreen(),
    );
  }
}
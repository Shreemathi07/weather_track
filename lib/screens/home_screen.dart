import 'package:flutter/material.dart';

import '../models/weather_model.dart';
import '../services/weather_service.dart';
import '../utils/app_colors.dart';
import '../utils/app_constants.dart';

import '../widgets/app_header.dart';
import '../widgets/search_section.dart';
import '../widgets/weather_card.dart';
import '../widgets/climate_categories.dart';
import '../widgets/weather_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WeatherService _weatherService = WeatherService();

  WeatherModel? _weather;
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchWeather(AppConstants.defaultLocation);
  }

  Future<void> _fetchWeather(String location) async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final result = await _weatherService.getWeather(location);

      setState(() {
        _weather = result;
      });
    } catch (e) {
      setState(() {
        _error = AppConstants.noLocationFound;
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  List<Color> _getBackground(String condition) {
    return AppColors.getWeatherGradient(condition);
  }

  @override
  Widget build(BuildContext context) {
    final gradient = _weather == null
        ? AppColors.defaultGradient
        : _getBackground(_weather!.condition);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(AppConstants.screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppHeader(),

                const SizedBox(height: 20),

                SearchSection(
                  onSearch: (value) {
                    _fetchWeather(value);
                  },
                ),

                const SizedBox(height: 20),

                if (_isLoading)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  )
                else if (_error != null)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      _error!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  )
                else if (_weather != null) ...[
                  WeatherCard(weather: _weather!),

                  const SizedBox(height: 20),

                  ClimateCategories(weather: _weather!),

                  const SizedBox(height: 20),

                  WeatherDetails(weather: _weather!),
                ],

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
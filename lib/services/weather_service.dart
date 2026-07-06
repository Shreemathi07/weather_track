import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather_model.dart';
import '../utils/app_constants.dart';

class WeatherService {
  Future<WeatherModel> getWeather(String location) async {
    final Uri url = Uri.parse(
      '${AppConstants.baseUrl}?key=${AppConstants.apiKey}&q=$location&aqi=no',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);

      return WeatherModel.fromJson(jsonData);
    }

    if (response.statusCode == 400) {
      throw Exception(AppConstants.noLocationFound);
    }

    throw Exception(AppConstants.somethingWentWrong);
  }
}
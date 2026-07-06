import 'package:flutter/material.dart';

import '../models/weather_model.dart';
import '../utils/app_colors.dart';

class WeatherDetails extends StatelessWidget {
  final WeatherModel weather;

  const WeatherDetails({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.glassColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.borderColor,
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 15,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Today's Highlights",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: _buildDetailTile(
                  Icons.thermostat,
                  "Feels Like",
                  "${weather.feelsLike.toStringAsFixed(1)}°C",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDetailTile(
                  Icons.water_drop,
                  "Humidity",
                  "${weather.humidity}%",
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: _buildDetailTile(
                  Icons.air,
                  "Wind Speed",
                  "${weather.windSpeed.toStringAsFixed(1)} km/h",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDetailTile(
                  Icons.visibility,
                  "Visibility",
                  "${weather.visibility.toStringAsFixed(1)} km",
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: _buildDetailTile(
                  Icons.speed,
                  "Pressure",
                  "${weather.pressure.toStringAsFixed(0)} mb",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDetailTile(
                  Icons.wb_sunny,
                  "UV Index",
                  weather.uvIndex.toStringAsFixed(1),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: _buildDetailTile(
                  Icons.cloud,
                  "Cloud Cover",
                  "${weather.cloudCover}%",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDetailTile(
                  Icons.update,
                  "Last Updated",
                  weather.lastUpdated,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailTile(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.10),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
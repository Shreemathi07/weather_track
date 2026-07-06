import 'package:flutter/material.dart';

import '../models/weather_model.dart';
import '../utils/app_colors.dart';

class ClimateCategories extends StatelessWidget {
  final WeatherModel weather;

  const ClimateCategories({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 2.6,
      ),
      children: [
        _buildItem(
          Icons.thermostat,
          "Temperature",
          "${weather.temperature.toStringAsFixed(1)}°C",
        ),
        _buildItem(
          Icons.water_drop,
          "Humidity",
          "${weather.humidity}%",
        ),
        _buildItem(
          Icons.air,
          "Wind Speed",
          "${weather.windSpeed.toStringAsFixed(1)} km/h",
        ),
        _buildItem(
          Icons.cloud,
          "Cloud Cover",
          "${weather.cloudCover}%",
        ),
      ],
    );
  }

  Widget _buildItem(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: AppColors.glassColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
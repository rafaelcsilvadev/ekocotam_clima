import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:flutter/material.dart';

class WeatherDay extends StatelessWidget {
  final String day;
  final String symbol;
  final int temperature;

  const WeatherDay({
    super.key,
    required this.day,
    required this.symbol,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.shadowColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: TextStyle(
                fontFamily: 'Inter',
                color: AppColors.textColor,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Image.asset(
              symbol,
              scale: 1.1,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Text(
              '${temperature}\u00B0',
              style: TextStyle(
                fontFamily: 'Inter',
                color: AppColors.textColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

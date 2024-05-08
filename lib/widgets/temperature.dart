import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  final int temperature;
  final String currentDay;

  const Temperature({
    super.key,
    required this.temperature,
    required this.currentDay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$currentDay: ',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 20,
              fontFamily: 'Inter',
            ),
          ),
          Text(
            '${temperature}\u00B0',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 30,
              fontFamily: 'Inter Bold',
            ),
          ),
        ],
      ),
    );
  }
}

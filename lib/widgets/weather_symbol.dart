import 'package:flutter/material.dart';

class WeatherSymbol extends StatelessWidget {
  final String symbol;

  const WeatherSymbol({
    super.key,
    required this.symbol,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 250,
      height: 250,
      child: Image.asset(symbol),
    );
  }
}

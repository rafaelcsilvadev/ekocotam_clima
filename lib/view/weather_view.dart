import 'package:ekocotam_clima/assets/icon/app_icons.dart';
import 'package:ekocotam_clima/routes/app_routes.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:ekocotam_clima/widgets/menu_bar_app.dart';
import 'package:ekocotam_clima/widgets/menu_bar_options.dart';
import 'package:ekocotam_clima/widgets/search.dart';
import 'package:ekocotam_clima/widgets/temperature.dart';
import 'package:ekocotam_clima/widgets/weather_day.dart';
import 'package:ekocotam_clima/widgets/weather_symbol.dart';
import 'package:flutter/material.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  DateTime currentDateTime = DateTime.now();

  isDay() {
    return currentDateTime.hour > 6 && currentDateTime.hour < 18;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Layout(
      statusBarColor: AppColors.primaryColor,
      systemNavigationBarColor: AppColors.primaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      backgroundColor: AppColors.primaryColor,
      child: Column(
        children: [
          const Search(),
          const WeatherSymbol(symbol: AppIcons.sunny),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.002),
            child: const Temperature(
              temperature: 29,
              currentDay: 'Sábado',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.08),
            child: const SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WeatherDay(day: 'Dom', symbol: AppIcons.rainCloud, temperature: 29),
                  WeatherDay(day: 'Seg', symbol: AppIcons.rainCloud, temperature: 29),
                  WeatherDay(day: 'Ter', symbol: AppIcons.rainCloud, temperature: 29),
                  WeatherDay(day: 'Qua', symbol: AppIcons.rainCloud, temperature: 29),
                  WeatherDay(day: 'Qui', symbol: AppIcons.rainCloud, temperature: 29),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.05),
            child: MenuBarApp(
              options: [
                MenuBarOptions(
                  isCurrentPage: true,
                  icon: Icons.home,
                  name: 'Home',
                  onPress: () => {},
                ),
                MenuBarOptions(
                  icon: Icons.local_hospital_outlined,
                  name: 'Saúde',
                  onPress: () => {},
                ),
                MenuBarOptions(
                  icon: Icons.lightbulb_outline,
                  name: 'Dicas',
                  onPress: () => Navigator.pushNamed(context, Routes.tip),
                ),
                MenuBarOptions(
                  icon: Icons.recycling_outlined,
                  name: 'Lixeira',
                  onPress: () => {},
                ),
                MenuBarOptions(
                  icon: Icons.public_outlined,
                  name: 'Redes',
                  onPress: () => {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

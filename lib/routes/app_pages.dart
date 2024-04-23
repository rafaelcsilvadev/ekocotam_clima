import 'package:ekocotam_clima/view/weather_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.weather,
      page: () => const WeatherView(),
    ),
  ];
}

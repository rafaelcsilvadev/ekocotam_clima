import 'package:ekocotam_clima/view/course_view.dart';
import 'package:ekocotam_clima/view/facts_view.dart';
import 'package:ekocotam_clima/view/health_view.dart';
import 'package:ekocotam_clima/view/network_view.dart';
import 'package:ekocotam_clima/view/tab_view.dart';
import 'package:ekocotam_clima/view/tip_view.dart';
import 'package:ekocotam_clima/view/trash_view.dart';
import 'package:ekocotam_clima/view/weather_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.weather,
      page: () => const WeatherView(),
    ),
    GetPage(
      name: Routes.tip,
      page: () => const TipView(),
    ),
    GetPage(
      name: Routes.course,
      page: () => const CourseView(),
    ),
    GetPage(
      name: Routes.facts,
      page: () => const FactsView(),
    ),
    GetPage(
      name: Routes.trash,
      page: () => const TrashView(),
    ),
    GetPage(
      name: Routes.tab,
      page: () => const TabView(),
    ),
    GetPage(
      name: Routes.health,
      page: () => const HealthView(),
    ),
    GetPage(
      name: Routes.network,
      page: () => const NetworkView(),
    ),
  ];
}

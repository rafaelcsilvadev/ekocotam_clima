import 'package:ekocotam_clima/assets/icon/app_icons.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  final TextEditingController _searchController = TextEditingController();
  DateTime currentDateTime = DateTime.now();

  isDay(){
    return currentDateTime.hour > 6 && currentDateTime.hour < 18;
  }

  @override
  void initState() {
    super.initState();
    _searchController.text = 'Morro do Gama';
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      statusBarColor: AppColors.primaryColor,
      systemNavigationBarColor: AppColors.primaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      backgroundColor: AppColors.primaryColor,
      child: Column(
        children: [
          TextFormField(
            controller: _searchController,
            cursorColor: AppColors.textColor,
            style: TextStyle(
              color: AppColors.textColor,
              fontFamily: 'Inter',
              fontSize: 18
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.textColor,
              ),
            ),
          ),


          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 250,
            height: 250,
            child: Image.asset(AppIcons.sunny),
          ),

          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 250,
            height: 250,
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    color: Colors.amber,
                    child: Column(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

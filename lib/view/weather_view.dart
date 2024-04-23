import 'package:ekocotam_clima/assets/icon/app_icons.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:flutter/material.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  final TextEditingController _searchController = TextEditingController();
  DateTime currentDateTime = DateTime.now();

  isDay() {
    return currentDateTime.hour > 6 && currentDateTime.hour < 18;
  }

  @override
  void initState() {
    super.initState();
    _searchController.text = 'Morro do Gama';
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String currentRoutes = ModalRoute.of(context)?.settings.name ?? '';

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
                color: AppColors.textColor, fontFamily: 'Inter', fontSize: 18),
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
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              '29\u00B0',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 50,
                fontFamily: 'Inter Bold',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: size.width * 0.8,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 170,
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
                            'DOM',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Image.asset(AppIcons.rainCloud),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            '20\u00B0',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 170,
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
                            'SEG',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Image.asset(AppIcons.rainCloud),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            '20\u00B0',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 170,
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
                            'TER',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Image.asset(AppIcons.rainCloud),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            '20\u00B0',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 170,
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
                            'QUA',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Image.asset(AppIcons.rainCloud),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            '20\u00B0',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 170,
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
                            'QUI',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Image.asset(AppIcons.rainCloud),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            '20\u00B0',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 170,
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
                            'SEX',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Image.asset(AppIcons.rainCloud),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            '20\u00B0',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 170,
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
                            'SAB',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Image.asset(AppIcons.rainCloud),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            '20\u00B0',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColors.textColor,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            width: size.width * 0.8,
            height: 90,
            decoration: BoxDecoration(
              color: AppColors.shadowColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 32,
                        color: AppColors.textColor,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Inter Bold',
                          color: AppColors.textColor,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_hospital_outlined,
                        size: 32,
                        color: AppColors.secondaryColor,
                      ),
                      Text(
                        'Saúde',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Inter',
                          color: AppColors.secondaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lightbulb_outline,
                        size: 32,
                        color: AppColors.secondaryColor,
                      ),
                      Text(
                        'Dicas',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Inter',
                          color: AppColors.secondaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.recycling_outlined,
                        size: 32,
                        color: AppColors.secondaryColor,
                      ),
                      Text(
                        'Lixeira',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Inter',
                          color: AppColors.secondaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.public_outlined,
                        size: 32,
                        color: AppColors.secondaryColor,
                      ),
                      Text(
                        'Redes',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            color: AppColors.secondaryColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

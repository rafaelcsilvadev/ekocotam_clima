import 'package:flutter/material.dart';

abstract class AppColors {
  static Color primaryColor =const Color(0xFF08B2F0);
  static Color secondaryColor = const Color(0xFF082A5E);
  static Color textColor = const Color(0xFF06A4DE);
  static Color shadowColor = const Color(0xFFFFFFFF);
}

light(){
  AppColors.primaryColor = const Color(0xFF08B2F0);
  AppColors.shadowColor = const Color(0xFF06A4DE);
  AppColors.secondaryColor = const Color(0xFF12448F);
  AppColors.textColor = const Color(0xFFFFFFFF);
}

dark(){
  AppColors.primaryColor = const Color(0xFF082A5E);
  AppColors.shadowColor = const Color(0xFF12448F);
  AppColors.secondaryColor = const Color(0xFF06A4DE);
  AppColors.textColor = const Color(0xFFFFFFFF);
}
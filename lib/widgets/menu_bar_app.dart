import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:flutter/material.dart';

class MenuBarApp extends StatelessWidget {
  final List<Widget> options;

  const MenuBarApp({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: size.width * 0.9,
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.shadowColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: options,
      ),
    );
  }
}

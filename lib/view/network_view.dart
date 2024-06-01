import 'package:ekocotam_clima/assets/images/app_images.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:flutter/material.dart';

class NetworkView extends StatelessWidget {
  const NetworkView({super.key});

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
          Container(
            alignment: Alignment.topLeft,
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.chevron_left, color: AppColors.textColor,),
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.instagram),
                fit: BoxFit.cover,
                // Adjust as necessary
              ),
            ),
          ),
        ],
      ),
    );
  }
}

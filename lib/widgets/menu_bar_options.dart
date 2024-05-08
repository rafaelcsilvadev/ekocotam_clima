import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:flutter/material.dart';

class MenuBarOptions extends StatelessWidget {
  final IconData icon;
  final String name;
  final Function() onPress;
  final bool isCurrentPage;

  const MenuBarOptions({
    super.key,
    required this.icon,
    required this.name,
    required this.onPress, this.isCurrentPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: isCurrentPage ? AppColors.textColor : AppColors.secondaryColor,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 12,
              fontFamily: isCurrentPage ? 'Inter Bold' : 'Inter',
              color: isCurrentPage ? AppColors.textColor : AppColors.secondaryColor,
            ),
          )
        ],
      ),
    );
  }
}

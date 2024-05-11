import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:flutter/material.dart';

class ContentButton extends StatelessWidget {
  final String text;
  final bool hasBorderButton;

  const ContentButton({super.key, required this.text, this.hasBorderButton = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        border: BorderDirectional(
          top: BorderSide(
              color: AppColors.secondaryColor,
              width: 2
          ),
          bottom: hasBorderButton ? BorderSide(
              color: AppColors.secondaryColor,
              width: 2
          ) : BorderSide.none,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.8,
            child: Text(
              text,
              textAlign: TextAlign.start,
              softWrap: true,
              maxLines: 3,
              style: TextStyle(
                fontSize: 15,
                color: AppColors.textColor,
                fontFamily: 'Inter Bold',
              ),
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

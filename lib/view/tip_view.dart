import 'package:ekocotam_clima/routes/app_routes.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/content_button.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:ekocotam_clima/widgets/menu_bar_app.dart';
import 'package:ekocotam_clima/widgets/menu_bar_options.dart';
import 'package:flutter/material.dart';

class TipView extends StatelessWidget {
  const TipView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Layout(
      statusBarColor: AppColors.primaryColor,
      systemNavigationBarColor: AppColors.primaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      backgroundColor: AppColors.primaryColor,
      child: Container(
        width: size.width,
        height: size.height,
        margin: const EdgeInsets.only(top: 20),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                child: Text(
                  'DICAS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: AppColors.textColor,
                    fontFamily: 'Inter Bold',
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                height: size.height * 0.7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ContentButton(
                        text:
                        'Como mitigar os efeitos das mudanças climáticas?',
                      ),
                      ContentButton(
                        text: 'Como funciona o clima?',
                      ),
                      ContentButton(
                        text: 'Quais fatores acontecem por conta do clima?',
                        hasBorderButton: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 0,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: MenuBarApp(
                  options: [
                    MenuBarOptions(
                      icon: Icons.home,
                      name: 'Home',
                      onPress: () =>
                          Navigator.pushNamed(context, Routes.weather),
                    ),
                    MenuBarOptions(
                      icon: Icons.article,
                      name: 'Cursos',
                      onPress: () => Navigator.pushNamed(context, Routes.course),
                    ),
                    MenuBarOptions(
                      isCurrentPage: true,
                      icon: Icons.lightbulb_outline,
                      name: 'Dicas',
                      onPress: () => {},
                    ),
                    MenuBarOptions(
                      icon: Icons.recycling_outlined,
                      name: 'Lixeira',
                      onPress: () => Navigator.pushNamed(context, Routes.trash),
                    ),
                    MenuBarOptions(
                      icon: Icons.check,
                      name: 'Fatos',
                      onPress: () => Navigator.pushNamed(context, Routes.facts),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

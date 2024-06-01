import 'package:ekocotam_clima/config/texts.dart';
import 'package:ekocotam_clima/routes/app_routes.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/content_button.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:ekocotam_clima/widgets/menu_bar_app.dart';
import 'package:ekocotam_clima/widgets/menu_bar_options.dart';
import 'package:flutter/material.dart';

class HealthView extends StatelessWidget {
  const HealthView({super.key});

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
                  'SAÚDE',
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
                        onPress: () => Navigator.pushNamed(context, Routes.tab, arguments: Texts.health1),
                        text: 'O clima afeta a saúde física?',
                      ),
                      ContentButton(
                        onPress: () => Navigator.pushNamed(context, Routes.tab, arguments: Texts.health2),
                        text: 'Como as mudanças climáticas afetam a saúde?',
                      ),
                      ContentButton(
                        hasBorderButton: true,
                        onPress: () => Navigator.pushNamed(context, Routes.tab, arguments: Texts.health3),
                        text: 'Quais são os impactos das '
                            'mudanças climáticas na '
                            'biodiversidade e na saúde '
                            'humana?',
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
                      isCurrentPage: true,
                      icon: Icons.article,
                      name: 'Cursos',
                      onPress: () => {},
                    ),
                    MenuBarOptions(
                      icon: Icons.lightbulb_outline,
                      name: 'Dicas',
                      onPress: () => Navigator.pushNamed(context, Routes.tip),
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

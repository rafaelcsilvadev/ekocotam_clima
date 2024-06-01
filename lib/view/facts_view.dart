import 'package:ekocotam_clima/config/texts.dart';
import 'package:ekocotam_clima/routes/app_routes.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/content_button.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:ekocotam_clima/widgets/menu_bar_app.dart';
import 'package:ekocotam_clima/widgets/menu_bar_options.dart';
import 'package:flutter/material.dart';

class FactsView extends StatelessWidget {
  const FactsView({super.key});

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
                  'FATOS',
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
                        onPress: () => Navigator.pushNamed(context, Routes.tab, arguments: Texts.facts1),
                        text:
                        'Como acontece o aquecimento global?',
                      ),
                      ContentButton(
                        onPress: () => Navigator.pushNamed(context, Routes.tab, arguments: Texts.facts3),
                        text: 'O que é efeito estufa?',
                      ),
                      ContentButton(
                        onPress: () => Navigator.pushNamed(context, Routes.tab, arguments: Texts.facts2),
                        text: 'O que são eventos climáticos?',
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
                      isCurrentPage: true,
                      icon: Icons.check,
                      name: 'Fatos',
                      onPress: () => {},
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

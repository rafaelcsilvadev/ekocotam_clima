import 'package:ekocotam_clima/helpers/access_uri.dart';
import 'package:ekocotam_clima/routes/app_routes.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/content_button.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:ekocotam_clima/widgets/menu_bar_app.dart';
import 'package:ekocotam_clima/widgets/menu_bar_options.dart';
import 'package:flutter/material.dart';

class CourseView extends StatelessWidget {
   const CourseView({super.key});

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
                  'CURSOS',
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
                        onPress: () async {
                          AccessUri accessUri = const AccessUri(
                            uri: 'https://unccelearn.org/course/view.php?id=24&page=overview'
                          );

                         await accessUri.accessUri();
                        },
                        text:
                        'Curso online introdutório sobre mudança climática',
                      ),
                      ContentButton(
                        onPress: () async {
                          AccessUri accessUri = const AccessUri(
                              uri: 'https://www.escolavirtual.gov.br/curso/346'
                          );

                          await accessUri.accessUri();
                        },
                        text: 'Mudança do Clima e Gestão de Risco Climático: Conceitos Fundamentais',
                      ),
                      ContentButton(
                        onPress: () async {
                          AccessUri accessUri = const AccessUri(
                              uri: 'https://cdp-ead.eadbox.com.br/courses/modulo-saude-urbana-e-clima'
                          );

                          await accessUri.accessUri();
                        },
                        text: 'Módulo Saúde Urbana e Clima',
                      ),
                      ContentButton(
                        onPress: () async {
                          AccessUri accessUri = const AccessUri(
                              uri: 'https://www.escolavirtual.gov.br/curso/97'
                          );

                          await accessUri.accessUri();
                        },
                        text: 'Impactos da Mudança do Clima para a Gestão Municipal',
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

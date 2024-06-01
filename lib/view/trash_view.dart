import 'package:ekocotam_clima/assets/images/app_images.dart';
import 'package:ekocotam_clima/routes/app_routes.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:ekocotam_clima/widgets/menu_bar_app.dart';
import 'package:ekocotam_clima/widgets/menu_bar_options.dart';
import 'package:flutter/material.dart';

class TrashView extends StatelessWidget {
  const TrashView({super.key});

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
                  'LIXO',
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
              child: SizedBox(
                height: size.height * 0.7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            top: BorderSide(
                                color: AppColors.secondaryColor, width: 2),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: size.width * 0.5,
                                  child: Image.asset(
                                    AppImages.trash1,
                                    scale: 0.2,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.5,
                                  child: Image.asset(
                                    AppImages.trash2,
                                    scale: 0.2,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: size.width,
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Text(
                                'O descarte inadequado de lixo '
                                'contribui para o aquecimento global '
                                'e ameaça a vida marinha. A '
                                'decomposição orgânica em aterros '
                                'produz metano, um gás de efeito '
                                'estufa, enquanto a incineração '
                                'libera dióxido de carbono. Resíduos '
                                'plásticos nos oceanos representam '
                                'perigo para animais marinhos,'
                                'levando à morte por sufocamento ou '
                                'ingestão. Substâncias tóxicas no lixo '
                                'podem contaminar habitats, '
                                'prejudicando a reprodução e a saúde '
                                'dos animais. É essencial adotar '
                                'práticas de gestão de resíduos mais '
                                'sustentáveis para mitigar esses '
                                'impactos negativos. ',
                                softWrap: true,
                                maxLines: 20,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      onPress: () =>
                          Navigator.pushNamed(context, Routes.course),
                    ),
                    MenuBarOptions(
                      icon: Icons.lightbulb_outline,
                      name: 'Dicas',
                      onPress: () => Navigator.pushNamed(context, Routes.tip),
                    ),
                    MenuBarOptions(
                      isCurrentPage: true,
                      icon: Icons.recycling_outlined,
                      name: 'Lixeira',
                      onPress: () => {},
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

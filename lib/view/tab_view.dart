import 'package:ekocotam_clima/routes/app_routes.dart';
import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:ekocotam_clima/widgets/layout.dart';
import 'package:ekocotam_clima/widgets/menu_bar_app.dart';
import 'package:ekocotam_clima/widgets/menu_bar_options.dart';
import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

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
            Container(
              alignment: Alignment.topLeft,
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.chevron_left, color: AppColors.textColor,),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: size.height * 0.2,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: Text(
                      args['title']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        color: AppColors.textColor,
                        fontFamily: 'Inter Bold',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
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
                            Container(
                              width: size.width,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Text(
                                args['text']!,
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

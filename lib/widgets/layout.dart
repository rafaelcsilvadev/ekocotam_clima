import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Layout extends StatefulWidget {
  final Widget? child;
  final Color statusBarColor;
  final Color systemNavigationBarColor;
  final Color backgroundColor;
  final Brightness statusBarIconBrightness;
  final Brightness statusBarBrightness;

  const Layout({
    super.key,
    this.child,
    required this.statusBarColor,
    required this.systemNavigationBarColor,
    required this.statusBarIconBrightness,
    required this.statusBarBrightness,
    required this.backgroundColor,
  });

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  themeLightDarkByTime() {
    DateTime currentDateTime = DateTime.now();

    if (currentDateTime.hour > 6 && currentDateTime.hour < 18) {
      light();
    } else {
      dark();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    themeLightDarkByTime();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: widget.statusBarColor,
        systemNavigationBarColor: widget.systemNavigationBarColor,
        statusBarIconBrightness: widget.statusBarIconBrightness,
        statusBarBrightness: widget.statusBarBrightness,
      ),
    );
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: widget.child,
        ),
      ),
    );
  }
}

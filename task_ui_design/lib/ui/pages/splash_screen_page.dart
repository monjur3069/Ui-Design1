import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_design/ui/pages/home_page.dart';

class SplashScreenPage extends StatefulWidget {
  static const String routeName = "/";

  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushNamed(context, HomePage.routeName));
    /*Navigator.push(
        context, CupertinoPageRoute(builder: (_) => LoginScreen()))*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "images/splash_screen_image.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

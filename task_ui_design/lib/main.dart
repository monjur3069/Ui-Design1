import 'package:flutter/material.dart';
import 'package:task_ui_design/test_page.dart';
import 'package:task_ui_design/ui/pages/details_page.dart';
import 'package:task_ui_design/ui/pages/home_page.dart';
import 'package:task_ui_design/ui/pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreenPage.routeName,
      routes: {
        SplashScreenPage.routeName : (_) => SplashScreenPage(),
        HomePage.routeName : (_) => HomePage(),
        DetailsPage.routeName : (_) => DetailsPage(),
        MyHomePage.routeName : (_) => MyHomePage(),
      },
    );
  }
}


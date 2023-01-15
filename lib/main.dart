import 'package:flutter/material.dart';
import 'package:vacation_app/utilities/app_style.dart';
import 'package:vacation_app/utilities/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vacation_app/views/home_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vacation_app/views/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: MainScreen(),
      ),
    );
  }
}

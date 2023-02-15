import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/home_page.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

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
        appBarTheme: const AppBarTheme(
          backgroundColor: appBarColor,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: bgColor,
      ),
      home: HomePage(),
    );
  }
}

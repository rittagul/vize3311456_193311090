import 'package:elbiyafet/onBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'toolsutilites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elbiyafet Shop',
      theme: ThemeData(
        primaryColor: Toolsutilites.mainColor,
      ),
      //استدعيت الصفحات الرئيسية
      home: const OnBoardingPage(),
    );
  }
}

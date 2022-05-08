import 'package:elearning_mobile_app/pages/login_page.dart';
import 'package:elearning_mobile_app/pages/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => Onboarding(),
        '/login_page' :(context) => LoginPage(),
      },
    );
  }
}
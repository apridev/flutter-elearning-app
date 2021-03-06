import 'package:elearning_mobile_app/home/home_page.dart';
import 'package:elearning_mobile_app/pages/login_page.dart';
import 'package:elearning_mobile_app/pages/onboarding.dart';
import 'package:elearning_mobile_app/pages/product_page.dart';
import 'package:elearning_mobile_app/pages/register_page.dart';
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
        '/register_page' :(context) => RegisterPage(),
        '/home_page' :(context) => HomePage(),
        '/product_page' :(context) => ProductPage(),
      },
    );
  }
}
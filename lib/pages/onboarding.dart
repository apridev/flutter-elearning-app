import 'package:elearning_mobile_app/template.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ?Image Onboarding
              Container(
                child: Center(
                  child: Image.asset(
                    'assets/imgs/bg_opening.png',
                    width: 225,
                  ),
                ),
              ),
              // !Text Onboarding
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Online Courses Built for Everyone',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                            letterSpacing: 0.5),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'We innovate in the learning process, \nchoose the course you want to \nmaster and become a professional in \nthat field',
                        style: subtitleTextStyle.copyWith(
                            fontSize: 12, fontWeight: semiBold, height: 1.6),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 234,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_page');
                    },
                    child: Text(
                      'Get Started',
                      style: whiteTextStyle.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

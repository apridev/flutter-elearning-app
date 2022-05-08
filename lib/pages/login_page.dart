import 'package:elearning_mobile_app/template.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return Container(
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Login',
            style:
                primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          leading: Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Icon(
                Icons.arrow_back_ios,
                color: blackColor,
              )),
          backgroundColor: backgroundColor,
          elevation: 0,
          toolbarHeight: 70,
        ),
      );
    }

    Widget headerTitle() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Welcome Back!',
              style:
                  primaryTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
          ],
        ),
      );
    }

    Widget subHeader() {
      return Container(
        margin:
            EdgeInsets.only(top: 12, left: defaultMargin, right: defaultMargin),
        child: Column(
          children: [
            Text(
              'Happy to see you again, please login here.',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [appbar(), headerTitle(), subHeader()],
          ),
        ));
  }
}

import 'package:elearning_mobile_app/template.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isHiddenPassword = true;
  bool isHiddenRemember = true;

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
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: blackColor,
                ),
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
              style:
                  subtitleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget titleEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 40, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Adderess',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget formEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        width: double.infinity,
        height: 50,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          cursorColor: blackColor,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: inputForm)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: blackColor)),
              hintText: 'Enter your email address',
              hintStyle:
                  inputFormStyle.copyWith(fontSize: 14, fontWeight: medium)),
        ),
      );
    }

    Widget titlePassword() {
      return Container(
        margin:
            EdgeInsets.only(top: 20, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget formPassword() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        width: double.infinity,
        height: 50,
        child: TextFormField(
          cursorColor: blackColor,
          obscureText: isHiddenPassword,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: inputForm)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: blackColor)),
              hintText: 'Enter your Password',
              hintStyle:
                  inputFormStyle.copyWith(fontSize: 14, fontWeight: medium),
              suffixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: _togglePasswordView,
                    child: isHiddenPassword == true ? Image.asset(
                      'assets/icons/icon-eye-hidden.png',
                      width: 24,
                    ) : Image.asset('assets/icons/icon-eye.png', width: 24,),
                  ),
                ],
              )),
        ),
      );
    }

    Widget contentLogin() {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: _toggleHiddenRemember,
                    child: isHiddenRemember == true ? Image.asset(
                      'assets/icons/icon-remember-me-hidden.png',
                      width: 20,
                    ) : Image.asset(
                      'assets/icons/icon-remember-me.png',
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Remember me', style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),)
                ],
              ),
            ),
            Container(
              child: Text('Forget Password', style: blueTextPrimary.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
                letterSpacing: 0.3
              ),),
            ),
          ],
        ),
      );
    }

    Widget buttomNav(){
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: defaultMargin,
          right: defaultMargin
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: primaryColor
        ),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/home_page', (route) => false);
          },
          child: Text('Login', style: whiteTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium
          ),),
        ),
      );
    }

    Widget footer(){
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don’t have an account?', style: subtitleTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium
            ),
            ),
            SizedBox(
              width: 4,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/register_page');
              },
              child: Text('Register', style: blueTextPrimary.copyWith(
                fontSize: 12,
                fontWeight: semiBold
              ),),
            )
          ],
        ),
      );
    }

    Widget footerNav(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/imgs/login_footer.png', width: 150,)
            ],
          ),
        ),
      );
    }

    Widget footerImg(){
      return Container(
        margin: EdgeInsets.only(
          top: 24
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/imgs/google_login.png', width: 50,),
            SizedBox(
              width: 12,
            ),
            Image.asset('assets/imgs/twitter_login.png', width: 50,),
            SizedBox(
              width: 12,
            ),
            Image.asset('assets/imgs/facebook_login.png', width: 50,),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appbar(),
              headerTitle(),
              subHeader(),
              titleEmail(),
              formEmail(),
              titlePassword(),
              formPassword(),
              contentLogin(),
              buttomNav(),
              footer(),
              footerNav(),
              footerImg(),
            ],
          ),
        ));
  }

  void _togglePasswordView(){
    if(isHiddenPassword == true){
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {
      
    });
  }
  void _toggleHiddenRemember(){
    if(isHiddenRemember == true){
      isHiddenRemember = false;
    } else {
      isHiddenRemember = true;
    }
    setState(() {
      
    });
  }
}

import 'package:elearning_mobile_app/template.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imgs/product-1.png',), fit: BoxFit.cover
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 40,
                      left: defaultMargin,
                      right: defaultMargin
                    ),
                    child: Text('User Interface \nDesign Essentials', style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      letterSpacing: 0.5,
                      height: 1.5
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 16,
                      left: defaultMargin,
                      right: defaultMargin
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star, 
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('4.9', style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold
                         ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('( 129 Reviews )', style: subtitleTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          Icons.alarm, 
                          color: blackColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('4h 21min', style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 24,
                      left: defaultMargin,
                      right: defaultMargin
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/imgs/mentor-1.png', 
                          width: 45,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Muhammad Arkana', style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold
                            ),
                            ),
                            SizedBox(height: 8,),
                            Text('Mentor UI/UX Course', style: subtitleTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 18,
                      left: defaultMargin,
                      right: defaultMargin
                    ),
                    child: Text('California-based designer with 6+ years of experience working in start-ups, mid-size companies, and larger enterprises. I love using design as a language to communicate complex ideas and file them down into a simple user experience.  After earning my BFA in Graphic Design, I split my career diving.... Show more', style: subtitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                      height: 1.5
                    ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 18,
                      left: defaultMargin,
                      right: defaultMargin
                    ),
                    child: Text('21 lessons (4h 21min)', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 18,
                      left: defaultMargin,
                      right: defaultMargin
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/imgs/learning-1.png'),
                        SizedBox(
                          height: 12,
                        ),
                        Image.asset('assets/imgs/learning-2.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}
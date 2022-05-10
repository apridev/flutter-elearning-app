import 'package:elearning_mobile_app/template.dart';
import 'package:flutter/material.dart';

class RecommendedTile extends StatelessWidget {

  String img;
  String title;
  String price;
  String reviews;

  RecommendedTile({this.title, this.price, this.reviews, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 15
        ),
        width: 200,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: backgroundColor,
          boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              child: Image.asset(
                img
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 12, left: 12, right: 12),
              child: Text(
                title, style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price, style: blueTextPrimary.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold
                  ),),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star, 
                          color: Colors.orangeAccent, 
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(reviews, style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
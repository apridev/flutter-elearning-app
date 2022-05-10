import 'package:elearning_mobile_app/template.dart';
import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {

  String nama;

  CategoriesTile({this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 12,
            ),
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: searchBorderColor
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: TextButton(
              onPressed: (){},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(nama, style: subtitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium
                    ),)
                  ],
                ),
              ),
            ),
          );
  }
}
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomPrevention extends StatelessWidget {
  final String imgUrl;
  final String text;

  CustomPrevention({this.text, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 28),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl),
              ),
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}

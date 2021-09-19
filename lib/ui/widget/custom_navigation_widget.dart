import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomNavigaton extends StatelessWidget {
  final String imageUrl;
  final int index;
  final bool isActive;

  CustomNavigaton({this.imageUrl, this.index, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 16,
      ),
      height: 36,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isActive ? mainColor : whiteColor,
      ),
      child: Image.asset(
        imageUrl,
        height: 18,
        width: 18,
        color: isActive ? whiteColor : greyColor,
      ),
    );
  }
}

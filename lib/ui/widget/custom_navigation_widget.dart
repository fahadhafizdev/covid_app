import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomNavigaton extends StatelessWidget {
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
        color: mainColor,
      ),
      child: Image.asset(
        'assets/images/icon_home.png',
        height: 18,
        width: 18,
      ),
    );
  }
}

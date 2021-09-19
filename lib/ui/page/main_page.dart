import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class MainPage extends StatelessWidget {
  Widget customButtonNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 36,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 18,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: whiteColor,
        ),
        child: Row(
          children: [
            Container(
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          customButtonNavigation(),
        ],
      ),
    );
  }
}

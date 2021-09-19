import 'package:covid_app/ui/widget/custom_navigation_widget.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomNavigaton(),
            CustomNavigaton(),
            CustomNavigaton(),
            CustomNavigaton(),
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

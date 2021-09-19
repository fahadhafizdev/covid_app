import 'package:covid_app/ui/page/home_page.dart';
import 'package:covid_app/ui/widget/custom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class MainPage extends StatelessWidget {
  Widget buildContent() {
    return HomePage();
  }

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
            CustomNavigaton(
              imageUrl: 'assets/images/icon_home.png',
              isActive: true,
              index: 0,
            ),
            CustomNavigaton(
              imageUrl: 'assets/images/icon_statistic.png',
              isActive: false,
              index: 1,
            ),
            CustomNavigaton(
              imageUrl: 'assets/images/icon_book.png',
              isActive: false,
              index: 2,
            ),
            CustomNavigaton(
              imageUrl: 'assets/images/icon_info.png',
              isActive: false,
              index: 3,
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
          buildContent(),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 358,
      width: double.infinity,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: 51,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/icon_menu.png',
                  height: 24,
                  width: 18,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/icon_bell.png',
                  height: 24,
                  width: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

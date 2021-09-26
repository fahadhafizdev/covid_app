import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomListHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119,
      width: 310,
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 1),
        borderRadius: BorderRadius.circular(
          11,
        ),
        color: whiteColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomPrevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 12, right: 28),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/prevention1.png'),
            ),
          ),
        ),
        Text(
          'Avoid close\ncontact',
          textAlign: TextAlign.center,
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        )
      ],
    );
  }
}

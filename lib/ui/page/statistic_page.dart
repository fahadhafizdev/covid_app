import 'package:covid_app/shared/theme.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: mainColor,
        ),
        Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            top: 61,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              SizedBox(height: 35),
              Text(
                'Data Provinsi',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 24,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

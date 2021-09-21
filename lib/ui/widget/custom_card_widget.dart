import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String amount;

  CustomCard({this.name, this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: (name == 'Affected')
            ? creamColor
            : (name == 'Death')
                ? redColor
                : (name == 'Hospitalized')
                    ? purpleColor
                    : greenColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          Text(
            amount,
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

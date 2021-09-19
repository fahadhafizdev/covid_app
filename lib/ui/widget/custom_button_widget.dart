import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 26,
      ),
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: redColor,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 12),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/icon_call.png',
                ),
              ),
            ),
          ),
          Text(
            'Call Now',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}

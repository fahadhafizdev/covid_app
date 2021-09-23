import 'package:covid_app/shared/theme.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Credit Design',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'https://www.freepik.com/vectors/social-media',
            style: blackTextStyle.copyWith(
              fontWeight: light,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'https://www.uplabs.com/posts/covid-19-coronavirus-free-app-ui#',
            style: blackTextStyle.copyWith(
              fontWeight: light,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'https://www.freepik.com/vectors/infographic',
            style: blackTextStyle.copyWith(
              fontWeight: light,
            ),
          ),
        ],
      ),
    );
  }
}

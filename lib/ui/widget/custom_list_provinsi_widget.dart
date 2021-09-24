import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomListProvinsi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 410,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(11),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 11,
      ),
      margin: EdgeInsets.only(bottom: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/icon_map.png',
            height: 33,
          ),
          Container(
            width: 140,
            child: Text(
              'DKI Jakarta Selatan sssss',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text.rich(
            TextSpan(
                text: 'Jumlah Kasus : ',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 13,
                ),
                children: [
                  TextSpan(
                    text: '856,585',
                    style: mainTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 13,
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

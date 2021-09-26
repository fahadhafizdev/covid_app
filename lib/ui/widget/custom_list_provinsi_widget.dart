import 'package:covid_app/models/provinsi_model.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomListProvinsi extends StatelessWidget {
  final ProvinsiModel dataProvinsi;
  final double marginLast;

  CustomListProvinsi({this.dataProvinsi, this.marginLast = 0});

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
      margin: EdgeInsets.only(bottom: 27 + marginLast),
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
              dataProvinsi.provinsi,
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
                    text: '${dataProvinsi.positif}',
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

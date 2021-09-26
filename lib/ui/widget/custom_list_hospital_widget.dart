import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomListHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 310,
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 1),
        borderRadius: BorderRadius.circular(
          11,
        ),
        color: whiteColor,
      ),
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.only(bottom: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/icon_map.png',
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DKI Jakarta',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 11),
                  Text(
                    'JL. TGK DAUD BEUREUEH, NO. 108 B. ACEH',
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Text(
              'RS UMUM DAERAH  DR. ZAINOEL ABIDIN',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 14,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/phone-call.png'),
                  ),
                ),
              ),
              Text(
                '(0651) 34565',
                style: mainTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

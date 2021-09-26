import 'package:covid_app/models/hospital_model.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class CustomListHospital extends StatelessWidget {
  final HospitalModel data;
  final double marginLast;

  CustomListHospital({this.data, this.marginLast = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 1),
        borderRadius: BorderRadius.circular(
          11,
        ),
        color: whiteColor,
      ),
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.only(bottom: 21 + marginLast),
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
                    data.province,
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 11),
                  Container(
                    width: 250,
                    child: Text(
                      data.address,
                      overflow: TextOverflow.clip,
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Container(
              width: 300,
              child: Text(
                data.name,
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 14,
                ),
                overflow: TextOverflow.clip,
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
              Container(
                width: 200,
                child: Text(
                  '${data.phone}',
                  overflow: TextOverflow.clip,
                  style: mainTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

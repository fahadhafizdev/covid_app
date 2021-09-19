import 'package:covid_app/ui/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget headerContent() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 51,
          bottom: 32,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
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
            SizedBox(height: 42),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Covid-19',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 24,
                  ),
                ),
                //NOTE: CARD COUNTRY
                Container(
                  padding: EdgeInsets.all(8),
                  height: 40,
                  width: 116,
                  decoration: BoxDecoration(
                    color: whiteBlueColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/icon_indo.png',
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'IDN',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                      Image.asset(
                        'assets/images/icon_cursor.png',
                        height: 10,
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 37),
            Text(
              'Are you feeling sick ?',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.',
              style: whiteTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(),
                CustomButton(),
              ],
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        headerContent(),
      ],
    );
  }
}

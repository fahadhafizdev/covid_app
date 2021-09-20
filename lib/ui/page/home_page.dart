import 'package:covid_app/ui/widget/custom_button_widget.dart';
import 'package:covid_app/ui/widget/custom_card_widget.dart';
import 'package:covid_app/ui/widget/custom_prevention_widget.dart';
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
              children: [
                CustomButton(
                  imageUrl: 'assets/images/icon_call.png',
                  color: redColor,
                  text: 'Call Now',
                ),
                SizedBox(width: 17),
                Expanded(
                  child: CustomButton(
                    imageUrl: 'assets/images/icon_message.png',
                    color: greenColor,
                    text: 'Send SMS',
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bodyContent() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomCard(
                    name: 'Affected',
                    amount: 336.851,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: CustomCard(
                    name: 'Death',
                    amount: 9.620,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: CustomCard(
                    name: 'Recovered',
                    amount: 336.851,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: CustomCard(
                    name: 'Global Affected',
                    amount: 9.620,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget titlePrevention() {
      return Padding(
        padding: EdgeInsets.only(left: defaultMargin),
        child: Text(
          'Prevention',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      );
    }

    Widget preventionContent() {
      return Container(
        height: 150,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
          bottom: 100,
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CustomPrevention(
              imgUrl: 'assets/images/prevention1.png',
              text: 'Avoid close\ncontact',
            ),
            CustomPrevention(
              imgUrl: 'assets/images/prevention2.png',
              text: 'Clean your\nhands often',
            ),
            CustomPrevention(
              imgUrl: 'assets/images/prevention3.png',
              text: 'Wear a\nfacemask',
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerContent(),
          bodyContent(),
          titlePrevention(),
          preventionContent(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:covid_app/service/url_service.dart';

class CustomButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Color color;

  CustomButton({this.imageUrl, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (text == 'Call Now') {
          UrlService().showMyDialog(context, text);
        } else {
          UrlService().showMyDialog(context, text);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 26,
        ),
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
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
                    imageUrl,
                  ),
                ),
              ),
            ),
            Text(
              text,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

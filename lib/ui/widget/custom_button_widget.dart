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
    Future<void> _launched;
    String _phone = '081235766099';
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        // throw (url);
        throw (url);
      }
    }

    Future<void> _makePhoneCall(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          title: Text(
            'Konfirmasi',
            style: blackTextStyle.copyWith(fontSize: 20),
          ),
          content: (text == 'Call Now')
              ? Text('Apakah anda ingin menghubungi rumahsakit ?')
              : Text('Apakah anda ingin mengirim pesan ke rumahsakit ?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Batal',
                style: blackTextStyle,
              ),
            ),
            TextButton(
              // launchUrl(
              //     'https://api.whatsapp.com/send?phone=6281330648183&text=saya%20ingin%20pesan%20ruangan.');
              onPressed: () => (text == 'Call Now')
                  ? _launched = _makePhoneCall('tel:$_phone')
                  : launchUrl(
                      'https://api.whatsapp.com/send?phone=6281330648183&text=saya%20ingin%20pesan%20ruangan%20 .'),
              child: Text(
                'Hubungi',
                style: blackTextStyle.copyWith(fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      );
    }

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

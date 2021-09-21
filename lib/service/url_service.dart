import 'package:covid_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlService {
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

  Future<void> showMyDialog(context, String text) async {
    Future<void> _launched;
    String _phone = '081235766099';

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
}

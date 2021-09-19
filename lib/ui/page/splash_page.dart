import 'dart:async';

import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 686,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 45),
            alignment: Alignment.bottomCenter,
            child: Text(
              'COVID -19\nMONITORING',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'ui/page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid App',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

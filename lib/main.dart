import 'package:covid_app/cubit/covid_cubit.dart';
import 'package:covid_app/cubit/page_cubit.dart';
import 'package:covid_app/cubit/provinsi_cubit.dart';
import 'package:covid_app/ui/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => CovidCubit(),
        ),
        BlocProvider(
          create: (context) => ProvinsiCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Covid App',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/home': (context) => MainPage(),
        },
        initialRoute: '/',
      ),
    );
  }
}

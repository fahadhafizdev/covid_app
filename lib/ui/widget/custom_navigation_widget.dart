import 'package:covid_app/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavigaton extends StatelessWidget {
  final String imageUrl;
  final int index;

  CustomNavigaton({this.imageUrl, this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 16,
        ),
        height: 36,
        width: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: (context.read<PageCubit>().state == index)
              ? mainColor
              : whiteColor,
        ),
        child: Image.asset(
          imageUrl,
          height: 18,
          width: 18,
          color: (context.read<PageCubit>().state == index)
              ? whiteColor
              : greyColor,
        ),
      ),
    );
  }
}

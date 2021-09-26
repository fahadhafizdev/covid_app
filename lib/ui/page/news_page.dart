import 'package:covid_app/cubit/hospital_cubit.dart';
import 'package:covid_app/models/hospital_model.dart';
import 'package:covid_app/ui/widget/custom_list_hospital_widget.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    context.read<HospitalCubit>().fetchDataHospital();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget backgroundContent() {
      return Container(
        height: double.infinity,
        width: double.infinity,
        color: mainColor,
      );
    }

    Widget headerContent() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 61,
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
            SizedBox(height: 35),
            Text(
              'Rumah Sakit\nRujukan Covid-19',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
            Container(
              height: 115,
              width: 299,
              margin: EdgeInsets.only(
                top: 35,
                left: 12,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/hospital.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget bodyContent() {
      return ListView(
        children: [
          SizedBox(
            height: 328,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 49,
              left: 15,
              right: 15,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  40,
                ),
              ),
            ),
            child: BlocConsumer<HospitalCubit, HospitalState>(
                listener: (context, state) {
              if (state is HospitalFailed) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error),
                    backgroundColor: redColor,
                  ),
                );
              }
            }, builder: (context, state) {
              if (state is HospitalSuccess) {
                List<HospitalModel> dataHospital = state.dataHospital;
                int index = 0;
                int lastIndex = dataHospital.length;
                return Column(
                  children: dataHospital.map((e) {
                    index++;
                    return CustomListHospital(
                      data: e,
                      marginLast: (index == lastIndex) ? 200 : 0,
                    );
                  }).toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
          ),
        ],
      );
    }

    return Stack(
      children: [
        backgroundContent(),
        headerContent(),
        bodyContent(),
      ],
    );
  }
}

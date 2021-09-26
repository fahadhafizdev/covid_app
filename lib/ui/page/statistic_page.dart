import 'package:covid_app/cubit/provinsi_cubit.dart';
import 'package:covid_app/models/provinsi_model.dart';
import 'package:covid_app/shared/theme.dart';
import 'package:covid_app/ui/widget/custom_list_provinsi_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  void initState() {
    context.read<ProvinsiCubit>().fetchDataProvinsi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              'Data Provinsi',
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
                    'assets/images/peta_indo.png',
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
            height: 2800,
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  40,
                ),
              ),
            ),
            child: BlocConsumer<ProvinsiCubit, ProvinsiState>(
              listener: (context, state) {
                if (state is ProvinsiFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.error),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is ProvinsiSuccess) {
                  print(state.provinsiData);
                  return Column(
                    children: state.provinsiData
                        .map(
                          (dataProvinsi) => CustomListProvinsi(
                            dataProvinsi: dataProvinsi,
                          ),
                        )
                        .toList(),
                  );
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      );
    }

    Widget backgroundContent() {
      return Container(
        height: double.infinity,
        width: double.infinity,
        color: mainColor,
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

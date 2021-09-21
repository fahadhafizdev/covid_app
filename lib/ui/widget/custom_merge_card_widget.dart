import 'package:covid_app/models/covid_model.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/shared/theme.dart';

import 'custom_card_widget.dart';

class CustomCardMerge extends StatelessWidget {
  CovidModel dataCovid;

  CustomCardMerge(this.dataCovid);

  @override
  Widget build(BuildContext context) {
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
                  amount: '1000',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomCard(
                  name: 'Death',
                  amount: '9.620',
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
                  amount: '336.851',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomCard(
                  name: 'Global Affected',
                  amount: '9.620',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

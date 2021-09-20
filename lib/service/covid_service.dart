import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:covid_app/models/covid_model.dart';
import 'package:http/http.dart' as http;

class CovidService {
  Future<List<CovidModel>> fetchCovidData() async {
    try {
      var response = await http.get(
        Uri.parse('https://api.kawalcorona.com/indonesia'),
      );

      print('status code: ${response.statusCode}');
      print('body : ${response.body}');

      if (response.statusCode == 200) {
        List<CovidModel> dataCovid = [];
        List data = jsonDecode(response.body);

        data.forEach((dataItem) {
          dataCovid.add(dataItem);
        });

        return dataCovid;
      } else {
        return [];
      }
    } catch (e) {
      throw e;
    }
  }
}

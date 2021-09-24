import 'dart:convert';

import 'package:covid_app/models/provinsi_model.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/models/covid_model.dart';
import 'package:http/http.dart' as http;

class CovidService {
  Future<List<CovidModel>> fetchCovidData() async {
    try {
      var response = await http.get(
        Uri.parse('https://api.kawalcorona.com/indonesia/'),
      );

      print('status code: ${response.statusCode}');
      print('body : ${response.body}');

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        List<CovidModel> covidData =
            data.map((e) => CovidModel.fromJson(e)).toList();

        print(covidData);

        return covidData;
      } else {
        return null;
      }
    } catch (e) {
      throw e;
    }
  }

  Future<List<ProvinsiModel>> fetchDataProvinsi() async {
    try {
      var response = await http.get(
        Uri.parse('https://api.kawalcorona.com/indonesia/provinsi/'),
      );
      print('status code: ${response.statusCode}');
      print('body : ${response.body}');

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        List<ProvinsiModel> provinsiData = data.map(
          (e) => ProvinsiModel.fromJson(e),
        );

        return provinsiData;
      } else {
        return [];
      }
    } catch (e) {
      throw e;
    }
  }
}

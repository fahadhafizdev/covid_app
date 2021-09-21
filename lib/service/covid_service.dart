import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:covid_app/models/covid_model.dart';
import 'package:http/http.dart' as http;

class CovidService {
  Future<List<CovidModel>> fetchCovidData() async {
    try {
      var response = await http.get(
        Uri.parse('https://api.kawalcorona.com/indonesia/'),
        headers: {
          "Access-Control-Allow-Origin":
              "*", // Required for CORS support to work

          "Access-Control-Allow-Headers":
              "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
          "Access-Control-Allow-Methods": "GET, HEAD",
        },
      );

      print('status code: ${response.statusCode}');
      print('body : ${response.body}');

      if (response.statusCode == 200) {
        // var data = jsonDecode(response.body);
        // CovidModel covidData = CovidModel.fromJson(data);
        // print(covidData);
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
}

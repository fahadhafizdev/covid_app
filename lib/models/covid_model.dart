import 'package:equatable/equatable.dart';

class CovidModel extends Equatable {
  final String name;
  final String positif;
  final String sembuh;
  final String meninggal;
  final String dirawat;

  CovidModel({
    this.name,
    this.dirawat,
    this.meninggal,
    this.positif,
    this.sembuh,
  });

  factory CovidModel.fromJson(json) => CovidModel(
        name: json['name'],
        positif: json['positif'],
        sembuh: json['sembuh'],
        meninggal: json['meninggal'],
        dirawat: json['dirawat'],
      );

  @override
  // TODO: implement props
  List<Object> get props => [
        name,
        positif,
        meninggal,
        sembuh,
        dirawat,
      ];
}

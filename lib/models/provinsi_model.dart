import 'package:equatable/equatable.dart';

class ProvinsiModel extends Equatable {
  final int fid;
  final int kodeProvinsi;
  final String provinsi;
  final int positif;
  final int sembuh;
  final int meninggal;

  ProvinsiModel({
    this.provinsi,
    this.meninggal,
    this.positif,
    this.sembuh,
    this.fid,
    this.kodeProvinsi,
  });

  factory ProvinsiModel.fromJson(json) => ProvinsiModel(
        fid: json['attributes']['FID'],
        kodeProvinsi: json['attributes']['Kode_Provi'],
        provinsi: json['attributes']['Provinsi'],
        positif: json['attributes']['Kasus_Posi'],
        meninggal: json['attributes']['Kasus_Meni'],
        sembuh: json['attributes']['Kasus_Sem'],
      );

  @override
  // TODO: implement props
  List<Object> get props => [
        fid,
        positif,
        sembuh,
        meninggal,
        kodeProvinsi,
        provinsi,
      ];
}

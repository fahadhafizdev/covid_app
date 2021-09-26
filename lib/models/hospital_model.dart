import 'package:equatable/equatable.dart';

class HospitalModel extends Equatable {
  final String name;
  final String address;
  final String region;
  final String phone;
  final String province;

  HospitalModel({
    this.name,
    this.address,
    this.phone,
    this.province,
    this.region,
  });

  factory HospitalModel.fromHson(json) => HospitalModel(
        name: json['name'],
        address: json['address'],
        phone: json['phone'],
        province: json['province'],
        region: json['region'],
      );

  @override
  // TODO: implement props
  List<Object> get props => [
        name,
        address,
        phone,
        province,
        region,
      ];
}

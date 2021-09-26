part of 'hospital_cubit.dart';

abstract class HospitalState extends Equatable {
  const HospitalState();

  @override
  List<Object> get props => [];
}

class HospitalInitial extends HospitalState {}

class HospitalLoading extends HospitalState {}

class HospitalFailed extends HospitalState {
  final String error;

  HospitalFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class HospitalSuccess extends HospitalState {
  List<HospitalModel> dataHospital;

  HospitalSuccess(this.dataHospital);

  @override
  // TODO: implement props
  List<Object> get props => [dataHospital];
}

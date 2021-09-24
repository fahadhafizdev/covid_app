part of 'provinsi_cubit.dart';

abstract class ProvinsiState extends Equatable {
  const ProvinsiState();

  @override
  List<Object> get props => [];
}

class ProvinsiInitial extends ProvinsiState {}

class ProvinsiLoading extends ProvinsiState {}

class ProvinsiFailed extends ProvinsiState {
  final String error;

  ProvinsiFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class ProvinsiSuccess extends ProvinsiState {
  final List<ProvinsiModel> provinsiData;

  ProvinsiSuccess(this.provinsiData);

  @override
  // TODO: implement props
  List<Object> get props => [provinsiData];
}

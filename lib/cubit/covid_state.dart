part of 'covid_cubit.dart';

abstract class CovidState extends Equatable {
  const CovidState();

  @override
  List<Object> get props => [];
}

class CovidInitial extends CovidState {}

class CovidLoading extends CovidState {}

class CovidFailed extends CovidState {
  final String error;

  CovidFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class CovidSuccess extends CovidState {
  List<CovidModel> covidData;
  CovidSuccess(this.covidData);

  @override
  // TODO: implement props
  List<Object> get props => [covidData];
}

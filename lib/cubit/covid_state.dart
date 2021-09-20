part of 'covid_cubit.dart';

abstract class CovidState extends Equatable {
  const CovidState();

  @override
  List<Object> get props => [];
}

class CovidInitial extends CovidState {}

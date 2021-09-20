import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'covid_state.dart';

class CovidCubit extends Cubit<CovidState> {
  CovidCubit() : super(CovidInitial());
}

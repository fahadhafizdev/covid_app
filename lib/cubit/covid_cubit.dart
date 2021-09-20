import 'package:bloc/bloc.dart';
import 'package:covid_app/models/covid_model.dart';
import 'package:equatable/equatable.dart';
import 'package:covid_app/service/covid_service.dart';

part 'covid_state.dart';

class CovidCubit extends Cubit<CovidState> {
  CovidCubit() : super(CovidInitial());

  void fetchCovidData() async {
    try {
      emit(CovidLoading());
      List<CovidModel> covidData = await CovidService().fetchCovidData();
      emit(CovidSuccess(covidData));
    } catch (e) {
      emit(CovidFailed(e.toString()));
    }
  }
}

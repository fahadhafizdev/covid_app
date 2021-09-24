import 'package:bloc/bloc.dart';
import 'package:covid_app/models/provinsi_model.dart';
import 'package:covid_app/service/covid_service.dart';
import 'package:equatable/equatable.dart';

part 'provinsi_state.dart';

class ProvinsiCubit extends Cubit<ProvinsiState> {
  ProvinsiCubit() : super(ProvinsiInitial());

  void fetchDataProvinsi() async {
    try {
      emit(ProvinsiLoading());
      List<ProvinsiModel> provinsiData =
          await CovidService().fetchDataProvinsi();
      emit(ProvinsiSuccess(provinsiData));
    } catch (e) {
      emit(ProvinsiFailed(e.toString()));
    }
  }
}

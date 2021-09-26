import 'package:bloc/bloc.dart';
import 'package:covid_app/models/hospital_model.dart';
import 'package:covid_app/service/covid_service.dart';
import 'package:equatable/equatable.dart';

part 'hospital_state.dart';

class HospitalCubit extends Cubit<HospitalState> {
  HospitalCubit() : super(HospitalInitial());

  void fetchDataHospital() async {
    try {
      emit(HospitalLoading());
      List<HospitalModel> dataHospital =
          await CovidService().fetchDataHospital();
      emit(HospitalSuccess(dataHospital));
    } catch (e) {
      emit(HospitalFailed(e.toString()));
    }
  }
}

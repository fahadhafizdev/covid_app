import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'hospital_state.dart';

class HospitalCubit extends Cubit<HospitalState> {
  HospitalCubit() : super(HospitalInitial());
}

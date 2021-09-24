import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'provinsi_state.dart';

class ProvinsiCubit extends Cubit<ProvinsiState> {
  ProvinsiCubit() : super(ProvinsiInitial());
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class HalamanCubit extends Cubit<int> {
  HalamanCubit() : super(0);

  void myPage(int newPage) {
    emit(newPage);
  }
}

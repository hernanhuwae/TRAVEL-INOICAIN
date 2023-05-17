import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inoicain_app_travel/models/user_model.dart';
import 'package:inoicain_app_travel/services/auth_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
      {required String nama,
      required String password,
      required String email,
      required String number}) async {
    try {
      emit(AuthLoading());

      userInoicain user = await AuthService().signUp(
          nama: nama, password: password, email: email, numberphone: number);

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}

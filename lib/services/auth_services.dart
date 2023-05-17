import 'package:firebase_auth/firebase_auth.dart';
import 'package:inoicain_app_travel/models/user_model.dart';
import 'package:inoicain_app_travel/services/pengguna_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<userInoicain> signUp({
    required String nama,
    required String password,
    String numberphone = '',
    required String email,
  }) async {
    try {
      UserCredential userKredensial = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      userInoicain user = userInoicain(
          nama: nama,
          email: email,
          password: userKredensial.user!.uid,
          saldo: 20000000);

      await userService().setUser(user);
      return user;
    } catch (e) {
      throw e;
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inoicain_app_travel/models/user_model.dart';

class userService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(userInoicain user) async {
    try {
      _userReference.doc(user.password).set({
        'email': user.email,
        'nama': user.nama,
        'phone': user.numberphone,
        'saldo': user.saldo,
      });
    } catch (e) {
      throw e;
    }
  }
}

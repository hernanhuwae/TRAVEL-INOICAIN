import 'package:equatable/equatable.dart';

class userInoicain extends Equatable {
  final String nama;
  final String password;
  final String email;
  final String numberphone;
  final int saldo;

  userInoicain({
    required this.nama,
    required this.email,
    this.numberphone = '',
    required this.password,
    this.saldo = 0,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [nama, password, email, numberphone, saldo];
}

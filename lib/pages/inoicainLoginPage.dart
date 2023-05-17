import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inoicain_app_travel/cubit/auth_cubit.dart';
import 'package:inoicain_app_travel/widgetshare/allFormLogin.dart';
import 'package:inoicain_app_travel/widgetshare/allTombol.dart';
import '../share/allTheme.dart';

class loginPageInoicain extends StatelessWidget {
  loginPageInoicain({super.key});

  TextEditingController namaController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController numberphoneController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget headerLogin() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 24, bottom: 30),
        child: Text(
          'Ayo Daftarkanlah Penerbanganmu',
          style: textBlack.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget bodyLogin() {
      Widget inputNama() {
        return loginaja(
          tekslogin: 'Nama',
          hintTextlogin: 'Masukkan Nama Lengkap',
          hidetext: false,
          sizeMarginatasbawah: 30,
          controller: namaController,
        );
      }

      Widget inputPassword() {
        return loginaja(
          tekslogin: 'Password',
          hintTextlogin: 'Masukkan Password',
          hidetext: true,
          sizeMarginatasbawah: 0,
          controller: passwordController,
        );
      }

      Widget inputEmail() {
        return loginaja(
          tekslogin: 'Email',
          hintTextlogin: 'Masukkan Email',
          hidetext: false,
          sizeMarginatasbawah: 30,
          controller: emailController,
        );
      }

      Widget inputnumberphone() {
        return loginaja(
          tekslogin: 'No.Telpon',
          hintTextlogin: 'Masukkan nomor telpon',
          hidetext: false,
          sizeMarginatasbawah: 0,
          controller: numberphoneController,
        );
      }

      Widget submitButtonLoginPage() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/travelBonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 50),
              child: inoicainAllButton(
                  ukuranBottom: 0,
                  teksbutton: 'MULAI',
                  ukuranLebar: double.infinity,
                  tekan: () {
                    print(passwordController.text);
                    context.read<AuthCubit>().signUp(
                        nama: namaController.text,
                        password: passwordController.text,
                        email: emailController.text,
                        number: numberphoneController.text);
                  }),
            );
          },
        );
      }

      return Container(
        color: paintbackground,
        width: 327,
        height: 630,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                inputNama(),
                inputPassword(),
                inputEmail(),
                inputnumberphone(),
                submitButtonLoginPage(),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: paintbackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerLogin(),
            bodyLogin(),
          ],
        ),
      ),
    );
  }
}

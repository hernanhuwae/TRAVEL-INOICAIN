import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inoicain_app_travel/cubit/auth_cubit.dart';
import 'package:inoicain_app_travel/cubit/halaman_cubit.dart';
import 'package:inoicain_app_travel/pages/bonus.dart';
import 'package:inoicain_app_travel/pages/destinasi.dart';
import 'package:inoicain_app_travel/pages/inoicainLoginPage.dart';
import 'package:inoicain_app_travel/pages/inoicainlayout1.dart';
import 'package:inoicain_app_travel/pages/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(inoicainTravel());
}

class inoicainTravel extends StatelessWidget {
  const inoicainTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HalamanCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => inoicainsplashscreen(),
          '/inoicainLayoutstart': (context) => inoicainStartLayout(),
          '/inoicainLayoutLogIn': (context) => loginPageInoicain(),
          '/travelBonus': (context) => myBonus(),
          '/toDestination': (context) => destinationInoicain(),
        },
      ),
    );
  }
}

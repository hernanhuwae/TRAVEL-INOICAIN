import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/share/allTheme.dart';

class inoicainsplashscreen extends StatefulWidget {
  const inoicainsplashscreen({super.key});

  @override
  State<inoicainsplashscreen> createState() => _inoicainsplashscreenState();
}

class _inoicainsplashscreenState extends State<inoicainsplashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, '/inoicainLayoutstart');
    });
    return Scaffold(
      backgroundColor: ungu,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'mypictures/logo.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'INOICAIN \nTRAVEL',
            textAlign: TextAlign.center,
            style: textWhite.copyWith(
              fontSize: 32,
              fontWeight: semibold,
              letterSpacing: 10,
            ),
          )
        ]),
      ),
    );
  }
}

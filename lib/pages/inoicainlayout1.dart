import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/share/allTheme.dart';
import 'package:inoicain_app_travel/widgetshare/allTombol.dart';

class inoicainStartLayout extends StatelessWidget {
  const inoicainStartLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'mypictures/backgroundplane.png',
                ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Terbanglah Dengan Nyaman',
              textAlign: TextAlign.center,
              style: textWhite.copyWith(fontWeight: bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Nikmatilah Penerbangan Anda \nSampai Ke Tujuan',
              textAlign: TextAlign.center,
              style: textWhite.copyWith(fontSize: 16, fontWeight: light),
            ),
            SizedBox(
              height: 50,
            ),
            inoicainAllButton(
              teksbutton: 'Mulai Terbang',
              ukuranLebar: 220,
              ukuranBottom: 80,
              tekan: () {
                Navigator.pushNamed(context, '/inoicainLayoutLogIn');
              },
            ),
          ],
        ),
      ),
    );
  }
}

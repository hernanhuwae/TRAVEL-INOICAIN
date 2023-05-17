import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/widgetshare/allTombol.dart';
import '../share/allTheme.dart';

class finishCheckout extends StatelessWidget {
  const finishCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.only(bottom: 80),
            width: 300,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('mypictures/finish.png'))),
          ),
          Text(
            'PEMBAYARAN BERHASIL',
            style: textBlack.copyWith(
              fontSize: 30,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          inoicainAllButton(
              ukuranBottom: 50,
              teksbutton: 'PESANANKU',
              ukuranLebar: 220,
              tekan: () {
                Navigator.pushNamed(context, '/toDestination');
              })
        ]),
      ),
    );
  }
}

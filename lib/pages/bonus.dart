import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/widgetshare/allTombol.dart';
import '../share/allTheme.dart';

class myBonus extends StatelessWidget {
  const myBonus({super.key});

  @override
  Widget build(BuildContext context) {
    Widget kartuSaldo() {
      return Container(
        margin: EdgeInsets.only(top: 151, bottom: 80),
        width: 300,
        height: 211,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('mypictures/cardplane.png'))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama',
                              style: textWhite.copyWith(
                                fontWeight: light,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'Hernan Huwae',
                              style: textWhite.copyWith(
                                  fontSize: 18, fontWeight: bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 30),
                    child: Row(
                      children: [
                        Image.asset(
                          'mypictures/logo.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'PAY',
                          style: textWhite.copyWith(fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 24, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo',
                      style:
                          textYes.copyWith(fontWeight: semibold, fontSize: 16),
                    ),
                    Text(
                      'IDR 20.000.000',
                      style:
                          textWhite.copyWith(fontWeight: medium, fontSize: 25),
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      );
    }

    Widget bodySaldo() {
      return Container(
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: textBlack.copyWith(fontWeight: semibold, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that \nyou can buy a flight ticket',
              textAlign: TextAlign.center,
              style: textgrey.copyWith(fontSize: 16, fontWeight: light),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.symmetric(horizontal: 78),
              child: inoicainAllButton(
                  ukuranBottom: 0,
                  teksbutton: 'Mulai Terbang',
                  ukuranLebar: double.infinity,
                  tekan: () {
                    Navigator.pushNamed(context, '/toDestination');
                  }),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: paintbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [kartuSaldo(), bodySaldo()],
        ),
      ),
    );
  }
}

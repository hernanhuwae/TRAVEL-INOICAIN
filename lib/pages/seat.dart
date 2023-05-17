import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/pages/checkout.dart';
import 'package:inoicain_app_travel/widgetshare/allSeatsInoicain.dart';
import 'package:inoicain_app_travel/widgetshare/allTombol.dart';
import '../share/allTheme.dart';

class seatInoicain extends StatelessWidget {
  const seatInoicain({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerSeat() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          top: 30,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                'PILIH KURSI FAVORITMU',
                style: textBlack.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('mypictures/tersedia.png'))),
                        ),
                        Text(
                          'Tersedia',
                          style: textBlack.copyWith(fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('mypictures/pilih.png'))),
                        ),
                        Text(
                          'Terpilih',
                          style: textBlack.copyWith(fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('mypictures/tidakada.png'))),
                      ),
                      Text(
                        'Tidak Tersedia',
                        style: textBlack.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //TODO: BUAT ABJAD GRID SEAT PENUMPANG
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text(
                    'A',
                    style: textgrey.copyWith(fontSize: 16, fontWeight: medium),
                  ),
                ),
                Container(
                  child: Text(
                    'B',
                    style: textgrey.copyWith(fontSize: 16, fontWeight: medium),
                  ),
                ),
                Container(
                  child: Text(
                    '',
                    style: textgrey.copyWith(fontSize: 16, fontWeight: medium),
                  ),
                ),
                Container(
                  child: Text(
                    'C',
                    style: textgrey.copyWith(fontSize: 16, fontWeight: medium),
                  ),
                ),
                Container(
                  child: Text(
                    'D',
                    style: textgrey.copyWith(fontSize: 16, fontWeight: medium),
                  ),
                ),
              ],
            ),
            //TODO: SEAT BARISAN KE-1
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customSeat(
                    barisanSeat: '',
                    status: 3,
                    myborder: 3,
                  ),
                  customSeat(barisanSeat: 'YOU', status: 0, myborder: 1),
                  customSeat(barisanSeat: '1', status: 2, myborder: 2),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '', status: 3, myborder: 3),
                ],
              ),
            ),
            //TODO: SEAT BARISAN KE-2
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customSeat(
                    barisanSeat: '',
                    status: 1,
                    myborder: 1,
                  ),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '2', status: 2, myborder: 2),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                ],
              ),
            ),
            //TODO: SEAT BARISAN KE-3
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customSeat(
                    barisanSeat: '',
                    status: 1,
                    myborder: 1,
                  ),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '3', status: 2, myborder: 2),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                ],
              ),
            ),
            //TODO: SEAT BARISAN KE-4
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customSeat(
                    barisanSeat: '',
                    status: 1,
                    myborder: 1,
                  ),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '4', status: 2, myborder: 2),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                ],
              ),
            ),
            //TODO: SEAT BARISAN KE-5
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customSeat(
                    barisanSeat: '',
                    status: 1,
                    myborder: 1,
                  ),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '5', status: 2, myborder: 2),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                  customSeat(barisanSeat: '', status: 1, myborder: 1),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      'Your Seat',
                      style:
                          textgrey.copyWith(fontWeight: medium, fontSize: 16),
                    ),
                  ),
                  Text(
                    'B1',
                    style: textBlack.copyWith(fontSize: 17, fontWeight: bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, left: 15, right: 15, bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      'Total',
                      style:
                          textgrey.copyWith(fontWeight: medium, fontSize: 16),
                    ),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: textUngu.copyWith(fontSize: 17, fontWeight: bold),
                  )
                ],
              ),
            ),
            inoicainAllButton(
                ukuranBottom: 46,
                teksbutton: 'Pembayaran',
                ukuranLebar: double.infinity,
                tekan: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => myCheckout()));
                })
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          headerSeat(),
        ],
      ),
    );
  }
}

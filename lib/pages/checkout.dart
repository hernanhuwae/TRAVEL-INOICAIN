import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/pages/finishBayar.dart';
import 'package:inoicain_app_travel/widgetshare/allCheckoutList.dart';
import 'package:inoicain_app_travel/widgetshare/allTombol.dart';
import '../share/allTheme.dart';

class myCheckout extends StatelessWidget {
  const myCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headingCheckout() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 40, right: 40),
            width: 291,
            height: 65,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('mypictures/Group 6.png'))),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'DPS',
                    style: textBlack.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Text(
                  'MDO',
                  style: textBlack.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          //TODO: DESTINASI PENERBANGAN
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Denpasar',
                    style: textBlack.copyWith(
                      fontSize: 15,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Text(
                  'Manado',
                  style: textBlack.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget bodyCheckout() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'mypictures/smallhill.png',
                      )),
                      borderRadius: BorderRadius.circular(18)),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Danau Linauw',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Manado',
                        style: textgrey.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('mypictures/Star.png'))),
                    ),
                    Text(
                      '4.4',
                      style: textBlack.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Detail Pemesanan',
              style: textBlack.copyWith(
                fontSize: 17,
                fontWeight: bold,
              ),
            ),
            customListCheckout(
                textleft: 'Traveler',
                textright: '2 ORANG',
                textcolorCheckout: thisblack),
            customListCheckout(
                textleft: 'Seat',
                textright: 'B1',
                textcolorCheckout: thisblack),
            customListCheckout(
                textleft: 'Insurance',
                textright: 'YES',
                textcolorCheckout: yes),
            customListCheckout(
                textleft: 'Refund', textright: 'NO', textcolorCheckout: no),
            customListCheckout(
                textleft: 'TAX',
                textright: '45%',
                textcolorCheckout: thisblack),
            customListCheckout(
                textleft: 'Price',
                textright: 'IDR 8.500.000',
                textcolorCheckout: thisblack),
            customListCheckout(
                textleft: 'Total',
                textright: 'IDR 12.000.000',
                textcolorCheckout: ungu),
          ],
        ),
      );
    }

    Widget saldoSisa() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 30,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Text(
                'DETAIL PEMBAYARAN',
                style: textBlack.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    color: ungu,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('mypictures/logo.png'))),
                      ),
                      Text(
                        'PAY',
                        style: textWhite.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 8.000.000',
                      style: textBlack.copyWith(
                        fontWeight: semibold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Sisa Saldo',
                      style: textgrey.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            inoicainAllButton(
                ukuranBottom: 30,
                teksbutton: 'BAYAR',
                ukuranLebar: double.infinity,
                tekan: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => finishCheckout()));
                })
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          headingCheckout(),
          bodyCheckout(),
          saldoSisa(),
        ],
      ),
    );
  }
}

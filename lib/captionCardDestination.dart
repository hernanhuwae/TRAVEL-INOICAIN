import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/pages/seat.dart';
import 'package:inoicain_app_travel/share/allTheme.dart';
import 'package:inoicain_app_travel/widgetshare/allTombol.dart';
import 'package:inoicain_app_travel/widgetshare/fasilitasCaptionDestination.dart';
import 'package:inoicain_app_travel/widgetshare/fotoCaptionDestination.dart';

class DestinationCardCaption extends StatelessWidget {
  const DestinationCardCaption({super.key});

  @override
  Widget build(BuildContext context) {
    Widget CaptionBackground() {
      return Container(
        width: double.infinity,
        height: 375,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('mypictures/image8.png'))),
      );
    }

    Widget ShadowBackground() {
      return Container(
        margin: EdgeInsets.only(top: 200),
        height: 214,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              paintbackground.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget captionDestination() {
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 275, left: 24, right: 24, bottom: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('DANAU LINAUW',
                              style: textWhite.copyWith(
                                  fontSize: 25, fontWeight: semibold)),
                          Text(
                            'Tomohon',
                            style: textWhite.copyWith(
                                fontWeight: medium, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('mypictures/Star.png'))),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24),
                        child: Text(
                          '4.4',
                          style: textWhite.copyWith(
                              fontSize: 15, fontWeight: semibold),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                    color: paintbackground,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tentang',
                      style: textBlack.copyWith(
                        fontSize: 22,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Wisata Danau Linow merupakan wisata di Tomohon yang berkelas, namun dengan harga tiket yang sangat terjangkau. Pesona keindahan alam, dipadukan dengan berbagai macam fasilitas wisata yang akan memanjakan para pengunjung.',
                      style: textBlack.copyWith(height: 2, fontWeight: light),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Foto',
                      style: textBlack.copyWith(fontWeight: bold, fontSize: 22),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        photoCaptionDestination(
                          photoCaption: 'mypictures/linow1.jpeg',
                        ),
                        photoCaptionDestination(
                          photoCaption: 'mypictures/linow2.jpeg',
                        ),
                        photoCaptionDestination(
                          photoCaption: 'mypictures/linow3.jpeg',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Fasilitas',
                      style: textBlack.copyWith(fontSize: 22, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    fasilitasCaptionDestination(
                      photosFasiltas: 'mypictures/cek.png',
                      captionFasilitas: 'Free Coffee',
                      photosFasiltas2: 'mypictures/cek.png',
                      captionFasilitas2: 'Free Wifi',
                      photosFasiltas3: 'mypictures/cek.png',
                      captionFasilitas3: 'Modern Place',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    fasilitasCaptionDestination(
                      photosFasiltas: 'mypictures/cek.png',
                      captionFasilitas: 'Free Snack ',
                      photosFasiltas2: 'mypictures/cek.png',
                      captionFasilitas2: 'Parking ',
                      photosFasiltas3: 'mypictures/cek.png',
                      captionFasilitas3: 'Lounge',
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      child: Row(children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IDR 2.500.000',
                                style: textBlack.copyWith(
                                  fontSize: 18,
                                  fontWeight: semibold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Per Orang',
                                style: textgrey.copyWith(
                                  fontWeight: light,
                                ),
                              )
                            ],
                          ),
                        ),
                        inoicainAllButton(
                          teksbutton: 'Beli',
                          ukuranLebar: 170,
                          tekan: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => seatInoicain()));
                          },
                          ukuranBottom: 0,
                        )
                      ]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: paintbackground,
        body: Stack(
          children: [
            CaptionBackground(),
            ShadowBackground(),
            captionDestination()
          ],
        ));
  }
}

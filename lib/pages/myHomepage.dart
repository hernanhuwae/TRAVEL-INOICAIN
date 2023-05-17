import 'package:flutter/material.dart';
import '../share/allTheme.dart';
import '../widgetshare/allDestinationBig.dart';
import '../widgetshare/allDestinationSmall.dart';

class homePageInocain extends StatelessWidget {
  const homePageInocain({super.key});
  //TODO: DIPINDAHKAN KE destinasi.dart
  //TODO: Tujuannya agar saat melakukan bloc Dart, tidak error (tidak boleh buat semua widget dalam satu halaman jika ada button yang menggunakan cubit/bloc)
  @override
  Widget build(BuildContext context) {
    Widget transferanDariDestinasi() {
      Widget bigDestination() {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              customDestinationBig(
                  pictureBigDestination: 'mypictures/lake.png',
                  namePlaceBigDestination: 'Danau Linauw',
                  nameLocationBigDestination: 'Tomohon',
                  ratingBigDestination: '4.4'),
              customDestinationBig(
                  pictureBigDestination: 'mypictures/hill.png',
                  namePlaceBigDestination: 'Gonjin',
                  nameLocationBigDestination: 'South Korea',
                  ratingBigDestination: '4.8'),
              customDestinationBig(
                  pictureBigDestination: 'mypictures/menarra.png',
                  namePlaceBigDestination: 'Benteng Takeshi',
                  nameLocationBigDestination: 'Jepang',
                  ratingBigDestination: '4.6'),
              customDestinationBig(
                  pictureBigDestination: 'mypictures/lake.png',
                  namePlaceBigDestination: 'Danau Linauw',
                  nameLocationBigDestination: 'Tomohon',
                  ratingBigDestination: '4.4'),
              customDestinationBig(
                  pictureBigDestination: 'mypictures/hill.png',
                  namePlaceBigDestination: 'Gonjin',
                  nameLocationBigDestination: 'South Korea',
                  ratingBigDestination: '4.8'),
              customDestinationBig(
                  pictureBigDestination: 'mypictures/menarra.png',
                  namePlaceBigDestination: 'Benteng Takeshi',
                  nameLocationBigDestination: 'Jepang',
                  ratingBigDestination: '4.6'),
            ],
          ),
        );
      }

      Widget smallDestination() {
        //TODO: Tambahin Expanded biar ListView tidak Unbounded Height
        return Container(
          padding: EdgeInsets.all(7),
          margin: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tempat Wisata Baru',
                style: textBlack.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/smallhill.png',
                  namePlaceSmallDestination: 'Danau Toba',
                  nameLocationSmallDestination: 'Medan',
                  ratingSmallDestination: '4.6'),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/sydney.png',
                  namePlaceSmallDestination: 'Sydney Opera',
                  nameLocationSmallDestination: 'Australia',
                  ratingSmallDestination: '4.8'),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/sydney.png',
                  namePlaceSmallDestination: 'Sydney Opera',
                  nameLocationSmallDestination: 'Australia',
                  ratingSmallDestination: '4.8'),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/sydney.png',
                  namePlaceSmallDestination: 'Sydney Opera',
                  nameLocationSmallDestination: 'Australia',
                  ratingSmallDestination: '4.8'),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/sydney.png',
                  namePlaceSmallDestination: 'Sydney Opera',
                  nameLocationSmallDestination: 'Australia',
                  ratingSmallDestination: '4.8'),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/sydney.png',
                  namePlaceSmallDestination: 'Sydney Opera',
                  nameLocationSmallDestination: 'Australia',
                  ratingSmallDestination: '4.8'),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/smallhill.png',
                  namePlaceSmallDestination: 'Danau Toba',
                  nameLocationSmallDestination: 'Medan',
                  ratingSmallDestination: '4.6'),
              SizedBox(
                height: 16,
              ),
              customSmallDestination(
                  pictureSmallDestination: 'mypictures/smallhill.png',
                  namePlaceSmallDestination: 'Danau Toba',
                  nameLocationSmallDestination: 'Medan',
                  ratingSmallDestination: '4.6'),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 24, top: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,\nHernan Huwae',
                        style: textBlack.copyWith(
                          fontSize: 24,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Mau Terbang Kemana?',
                        style:
                            textgrey.copyWith(fontSize: 16, fontWeight: light),
                      )
                    ],
                  ),
                ),
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('mypictures/planeprofile.png'))))
              ],
            ),
          ),
          bigDestination(),
          smallDestination(),
        ],
      );
    }

    return ListView(
      children: [
        transferanDariDestinasi(),
      ],
    );
  }
}

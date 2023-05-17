import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inoicain_app_travel/cubit/halaman_cubit.dart';
import 'package:inoicain_app_travel/pages/dompetInoicain.dart';
import 'package:inoicain_app_travel/pages/myHomepage.dart';
import 'package:inoicain_app_travel/pages/pengaturanBar.dart';
import 'package:inoicain_app_travel/pages/penjualan.dart';

import 'package:inoicain_app_travel/widgetshare/allButtonButtomDestination.dart';
import 'package:inoicain_app_travel/widgetshare/allDestinationBig.dart';
import 'package:inoicain_app_travel/widgetshare/allDestinationSmall.dart';
import '../share/allTheme.dart';

class destinationInoicain extends StatelessWidget {
  const destinationInoicain({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerDestination(int pageIndex) {
      switch (pageIndex) {
        case 0:
          return homePageInocain();
        case 1:
          return transaksiInoicain();
        case 2:
          return dompetTravelInoicain();
        case 3:
          return pengaturanInoicain();
        default:
          return homePageInocain();
      }
    }

    Widget tombolBawahDestination() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: paintbackground,
          height: 60,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customButtonBottomDestination(
                  selectHalamanIndex: 0,
                  imageButtonBottom: 'mypictures/but1.png'),
              customButtonBottomDestination(
                  selectHalamanIndex: 1,
                  imageButtonBottom: 'mypictures/but2.png'),
              customButtonBottomDestination(
                  selectHalamanIndex: 2,
                  imageButtonBottom: 'mypictures/but3.png'),
              customButtonBottomDestination(
                  selectHalamanIndex: 3,
                  imageButtonBottom: 'mypictures/but4.png'),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<HalamanCubit, int>(
      builder: (context, pageIndex) {
        return Scaffold(
            backgroundColor: paintbackground,
            body: Stack(
              children: [
                headerDestination(pageIndex),
                tombolBawahDestination(),
              ],
            ));
      },
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import '../share/allTheme.dart';

class customSeat extends StatelessWidget {
  final String barisanSeat;
  final int status;
  final int myborder;
  final String you;
  const customSeat(
      {super.key,
      this.you = 'YOU',
      required this.barisanSeat,
      required this.status,
      required this.myborder});

  @override
  Widget build(BuildContext context) {
    //TODO: kalo '0'=tersedia, kalo '1'=terpilih
    backgroundseats() {
      switch (status) {
        case 0:
          return available;
        case 1:
          return pilih;
        case 2:
          return putih;
        default:
          return grey;
      }
    }

    borderBackgroundSeats() {
      switch (myborder) {
        case 0:
          return available;
        case 1:
          return pilih;
        case 2:
          return putih;
        default:
          return grey;
      }
    }

    return Container(
      alignment: Alignment.center,
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: backgroundseats(),
          border: Border.all(
            color: borderBackgroundSeats(),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(18)),
      child: Text(
        barisanSeat,
        style: textgrey.copyWith(fontWeight: medium, fontSize: 18),
      ),
    );
  }
}

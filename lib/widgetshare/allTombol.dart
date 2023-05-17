import 'package:flutter/material.dart';
import '../share/allTheme.dart';

class inoicainAllButton extends StatelessWidget {
  final String teksbutton;
  final Function() tekan;
  final double ukuranLebar;
  final double ukuranBottom;
  const inoicainAllButton(
      {super.key,
      required this.ukuranBottom,
      required this.teksbutton,
      required this.ukuranLebar,
      required this.tekan});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: ukuranBottom),
      height: 55,
      width: ukuranLebar,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              backgroundColor: ungu,
              padding: EdgeInsets.symmetric(vertical: 14)),
          onPressed: tekan,
          child: Text(
            teksbutton,
            style: textWhite.copyWith(fontSize: 18),
          )),
    );
  }
}

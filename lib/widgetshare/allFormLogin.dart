import 'package:flutter/material.dart';
import '../share/allTheme.dart';

class loginaja extends StatelessWidget {
  final String tekslogin;
  final String hintTextlogin;
  final bool hidetext;
  final double sizeMarginatasbawah;
  final TextEditingController controller;
  const loginaja(
      {super.key,
      required this.tekslogin,
      required this.hintTextlogin,
      required this.controller,
      required this.hidetext,
      required this.sizeMarginatasbawah});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 20, vertical: sizeMarginatasbawah),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tekslogin),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: hidetext,
            controller: controller,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                hintText: hintTextlogin,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                    ))),
          ),
        ],
      ),
    );
  }
}

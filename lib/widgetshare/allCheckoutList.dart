import 'package:flutter/material.dart';
import '../share/allTheme.dart';

class customListCheckout extends StatelessWidget {
  final String textleft;
  final String textright;
  final Color textcolorCheckout;
  const customListCheckout(
      {super.key,
      required this.textleft,
      required this.textright,
      required this.textcolorCheckout});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            child: Expanded(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('mypictures/cek.png'))),
                  ),
                  Text(textleft,
                      style: textBlack.copyWith(
                        fontWeight: semibold,
                        fontSize: 16,
                      ))
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(textright,
                  style: TextStyle(
                    color: textcolorCheckout,
                    fontSize: 16,
                    fontWeight: bold,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

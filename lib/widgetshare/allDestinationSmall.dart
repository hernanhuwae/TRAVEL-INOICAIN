import 'package:flutter/material.dart';
import '../share/allTheme.dart';

class customSmallDestination extends StatelessWidget {
  final String pictureSmallDestination;
  final String namePlaceSmallDestination;
  final String nameLocationSmallDestination;
  final String ratingSmallDestination;
  const customSmallDestination(
      {super.key,
      required this.pictureSmallDestination,
      required this.namePlaceSmallDestination,
      required this.nameLocationSmallDestination,
      required this.ratingSmallDestination});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(pictureSmallDestination))),
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namePlaceSmallDestination,
                    style:
                        textBlack.copyWith(fontSize: 18, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    nameLocationSmallDestination,
                    style: textgrey.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
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
                ratingSmallDestination,
                style: textBlack.copyWith(fontWeight: medium, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
    ;
  }
}

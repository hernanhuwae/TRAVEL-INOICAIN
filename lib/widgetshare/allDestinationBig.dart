import 'package:flutter/material.dart';
import 'package:inoicain_app_travel/captionCardDestination.dart';
import '../share/allTheme.dart';

class customDestinationBig extends StatelessWidget {
  final String pictureBigDestination;
  final String namePlaceBigDestination;
  final String nameLocationBigDestination;
  final String ratingBigDestination;

  const customDestinationBig(
      {super.key,
      required this.pictureBigDestination,
      required this.namePlaceBigDestination,
      required this.nameLocationBigDestination,
      required this.ratingBigDestination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DestinationCardCaption()));
      },
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(
          top: 30,
          bottom: 10,
          left: 24,
          right: 24,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.all(15),
            width: 180,
            height: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image:
                    DecorationImage(image: AssetImage(pictureBigDestination))),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: BoxDecoration(
                    color: paintbackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                    )),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(3),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('mypictures/Star.png'))),
                    ),
                    Text(ratingBigDestination,
                        style: textBlack.copyWith(fontWeight: medium))
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  namePlaceBigDestination,
                  style: textBlack.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  nameLocationBigDestination,
                  style: textgrey.copyWith(fontWeight: medium),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

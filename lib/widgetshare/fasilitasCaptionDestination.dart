import 'package:flutter/material.dart';

class fasilitasCaptionDestination extends StatelessWidget {
  final String photosFasiltas;
  final String captionFasilitas;
  final String photosFasiltas2;
  final String captionFasilitas2;
  final String photosFasiltas3;
  final String captionFasilitas3;
  const fasilitasCaptionDestination({
    super.key,
    required this.photosFasiltas2,
    required this.photosFasiltas,
    required this.captionFasilitas2,
    required this.captionFasilitas,
    required this.photosFasiltas3,
    required this.captionFasilitas3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 2),
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(photosFasiltas))),
              ),
              Text(captionFasilitas)
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 2),
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(photosFasiltas2))),
              ),
              Text(captionFasilitas2)
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 2),
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(photosFasiltas3))),
              ),
              Text(captionFasilitas3)
            ],
          ),
        ],
      ),
    );
  }
}

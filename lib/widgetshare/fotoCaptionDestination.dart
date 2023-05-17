import 'package:flutter/material.dart';

class photoCaptionDestination extends StatelessWidget {
  final String photoCaption;
  const photoCaptionDestination({super.key, required this.photoCaption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(photoCaption))),
    );
  }
}

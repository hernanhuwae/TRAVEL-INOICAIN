import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inoicain_app_travel/cubit/halaman_cubit.dart';
import '../share/allTheme.dart';

class customButtonBottomDestination extends StatelessWidget {
  final String imageButtonBottom;
  final int selectHalamanIndex;

  const customButtonBottomDestination({
    super.key,
    required this.selectHalamanIndex,
    required this.imageButtonBottom,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<HalamanCubit>().myPage(selectHalamanIndex);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imageButtonBottom,
              width: 24,
              height: 24,
              color: context.read<HalamanCubit>().state == selectHalamanIndex
                  ? ungu
                  : grey),
          Container(
            width: 30,
            height: 2,
            color: context.read<HalamanCubit>().state == selectHalamanIndex
                ? ungu
                : grey,
          )
        ],
      ),
    );
  }
}

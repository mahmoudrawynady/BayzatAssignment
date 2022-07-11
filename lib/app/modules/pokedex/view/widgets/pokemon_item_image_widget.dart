import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../commons/pikachu_running_widget.dart';

class PokemonItemImageWidget extends StatelessWidget {
  const PokemonItemImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: 71.w,
      height: 80.h,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: PikachuRunningWidget(height: 71.h, width: 71.w),
        );
      },
    );
  }
}

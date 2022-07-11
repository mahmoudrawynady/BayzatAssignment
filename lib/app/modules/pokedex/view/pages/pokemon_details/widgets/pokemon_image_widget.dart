import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../commons/pikachu_running_widget.dart';

class PokemonImageWidget extends StatelessWidget {
  final String? pokemonSprite;

  const PokemonImageWidget({
    Key? key,
    required this.pokemonSprite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10.w,
      bottom: 1.h,
      child: Image.network(
        pokemonSprite!,
        width: 150.w,
        height: 150.h,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: PikachuRunningWidget(height: 150.h, width: 186.5.w),
          );
        },
      ),
    );
  }
}

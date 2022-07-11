import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/usecases/pokemon_formater.dart';

class PokemonItemNameWidget extends StatelessWidget {
  const PokemonItemNameWidget({
    Key? key,
    required this.name,
    this.style,
  }) : super(key: key);

  final String name;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8).r,
      child: Text(
        PokemonFormatter().formatName(name),
        style: style??TextStyle(
          fontSize: 12.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}

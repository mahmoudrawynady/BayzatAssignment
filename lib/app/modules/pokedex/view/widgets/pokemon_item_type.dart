import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/usecases/pokemon_colors.dart';
import '../../domain/usecases/pokemon_formater.dart';

class PokemonItemTypeWidget extends StatelessWidget {
  const PokemonItemTypeWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8).r,
      child: Text(
        PokemonFormatter().formatName(type),
        style: TextStyle(
          fontSize: 12.sp,
          color: CustomColors().lightGray,
        ),
      ),
    );
  }
}

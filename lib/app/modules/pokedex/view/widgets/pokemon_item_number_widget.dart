import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/domain/usecases/pokemon_colors.dart';
import '../../domain/entities/pokemon_entity.dart';
import '../../domain/usecases/pokemon_formater.dart';

class PokemonItemNumberWidget extends StatelessWidget {
  const PokemonItemNumberWidget({Key? key, required this.pokeData, this.style})
      : super(key: key);

  final PokemonEntity pokeData;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 10).r,
      width: double.maxFinite,
      child: Text(
        '#${PokemonFormatter().formatNumber(pokeData.id.toString())}',
        textAlign: TextAlign.left,
        style: style ??
            TextStyle(
              fontSize: 12.sp,
              color: CustomColors().lightGray,
            ),
      ),
    );
  }
}

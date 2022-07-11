import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/widgets/pokemon_item_name_widget.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/widgets/pokemon_item_number_widget.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/widgets/pokemon_item_type.dart';
import '../../domain/entities/pokemon_entity.dart';

class PokemonItemDetailsWidget extends StatelessWidget {
  const PokemonItemDetailsWidget({
    Key? key,
    required this.pokeData,
  }) : super(key: key);

  final PokemonEntity pokeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 83.h,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PokemonItemNumberWidget(pokeData: pokeData),
          PokemonItemNameWidget(name: pokeData.name),
          10.verticalSpace,
          PokemonItemTypeWidget(type: pokeData.types[0])
        ],
      ),
    );
  }
}

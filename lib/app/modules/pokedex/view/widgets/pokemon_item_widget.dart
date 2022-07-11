import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/widgets/pokemon_item_image_widget.dart';

import '../../domain/entities/pokemon_entity.dart';
import '../../domain/usecases/pokemon_colors.dart';
import 'pokemon_item_details_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  final PokemonEntity pokeData;
  final String router;

  const PokemonItemWidget({
    Key? key,
    required this.pokeData,
    required this.router,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Modular.to.pushNamed(
          'pokemon',
          arguments: [pokeData, router],
        );
      },
      child: Container(
        width: 110.w,
        height: 250.h,
        decoration: BoxDecoration(
          color: CustomColors().pokeColor(pokeData.types[0]),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Column(
          children: [
            PokemonItemImageWidget(image: pokeData.sprite),
            PokemonItemDetailsWidget(pokeData: pokeData),
          ],
        ),
      ),
    );
  }
}

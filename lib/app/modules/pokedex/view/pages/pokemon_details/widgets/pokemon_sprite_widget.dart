import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/domain/usecases/pokemon_colors.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/pages/pokemon_details/widgets/pokemon_image_widget.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/pages/pokemon_details/widgets/pokemon_states_widget.dart';
import 'package:pokedex_desafio_ioasys_flutter/resources/app_image_paths.dart';

import '../../../../domain/entities/pokemon_entity.dart';
import '../../../widgets/pokemon_item_name_widget.dart';
import '../../../widgets/pokemon_item_number_widget.dart';

class PokemonSpriteWidget extends StatelessWidget {
  const PokemonSpriteWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonEntity? pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors().pokeColor(pokemon!.types[0]),
      height: 200.h,
      child: Padding(
        padding: const EdgeInsets.only(top: 5).r,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Positioned(
                top: 5.r,
                left: 0.r,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PokemonItemNameWidget(
                          name: pokemon!.name,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      PokemonStatesWidget(pokemonTypes: pokemon!.types)
                    ])),
            Positioned(
              right: 0,
              bottom: 1.r,
              child: Image.asset(
                AppImages.pokemon_details_img,
                height: 176.r,
                width: 120.r,
                fit: BoxFit.fill,
              ),
            ),
            PokemonImageWidget(pokemonSprite: pokemon!.sprite),
            Positioned(
              bottom: 2.r,
              left: 5.r,
              child: PokemonItemNumberWidget(
                pokeData: pokemon!,
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}

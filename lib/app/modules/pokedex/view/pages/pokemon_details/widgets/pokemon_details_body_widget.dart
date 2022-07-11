import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/entities/pokemon_entity.dart';
import 'pokemon_details_container_widget.dart';

class PokemonDetailsBodyWidget extends StatelessWidget {
  const PokemonDetailsBodyWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 7).r,
          color: Colors.white,
          child: PokemonDetailsContainerWidget(pokemon: pokemon),
        )
      ],
    );
  }
}

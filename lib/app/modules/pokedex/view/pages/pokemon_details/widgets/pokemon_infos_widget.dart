import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localization/localization.dart';
import 'package:pokedex_desafio_ioasys_flutter/resources/app_strings.dart';

import 'pokemon_info_widget.dart';

class PokemonInfosWidget extends StatelessWidget {
  final int pokeWeight;
  final int pokeHeight;

  const PokemonInfosWidget({
    Key? key,
    required this.pokeWeight,
    required this.pokeHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20).r,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            15.horizontalSpace,
            PokemonInfoWidget(
              infoType: AppStrings.heightText.i18n(),
              info: '${pokeHeight / 10} m',
              useIcon: true,
            ),
            48.horizontalSpace,
            PokemonInfoWidget(
              infoType: AppStrings.weightText.i18n(),
              info: '${pokeWeight / 10} Kg',
              useIcon: true,
            ),
            48.horizontalSpace,
            PokemonInfoWidget(
              infoType: AppStrings.bmiText,
              info: '${(pokeWeight / (pokeHeight * pokeHeight)).toStringAsFixed(2)}',
              useIcon: false,
            ),
          ],
        ),
      ),
    );
  }
}

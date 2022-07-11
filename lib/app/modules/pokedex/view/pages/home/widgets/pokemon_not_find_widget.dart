import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localization/localization.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/domain/usecases/pokemon_colors.dart';
import 'package:pokedex_desafio_ioasys_flutter/resources/app_strings.dart';

class PokemonNotFindWidget extends StatelessWidget {
  const PokemonNotFindWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _color = CustomColors();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          AppStrings.opsText,
          style: TextStyle(
            color: _color.primaryColor,
            fontSize: 100.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppStrings.pokemonsNotFoundText.i18n(),
          style: TextStyle(
            color: _color.primaryColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

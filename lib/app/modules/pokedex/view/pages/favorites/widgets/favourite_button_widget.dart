import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/providers/favorites_provider.dart';
import 'package:pokedex_desafio_ioasys_flutter/resources/app_strings.dart';
import 'package:provider/provider.dart';

import '../../../../domain/usecases/pokemon_colors.dart';

class FavoriteButtonWidget extends StatelessWidget {
  const FavoriteButtonWidget({
    this.pokemonId,
    Key? key,
  }) : super(key: key);

  final int? pokemonId;

  @override
  Widget build(BuildContext context) {
    final _color = CustomColors();
    return Consumer<FavoritesProvider>(
        builder: (context, favoritesController, child) {
      return Positioned(
        right: 5.r,
        bottom: 60.r,
        child: InkWell(
          onTap: () {
            Provider.of<FavoritesProvider>(context, listen: false)
                .addRemovePokemonFavorite(
              pokemonID: pokemonId!,
            );
          },
          child: Container(
            child: Center(
                child: Text(
              (!FavoritesProvider.isFavouritePokemon!)
                  ? AppStrings.addFavouriteText
                  : AppStrings.removeFavouriteText,
              style: TextStyle(
                  color: (!FavoritesProvider.isFavouritePokemon!)
                      ? Colors.white
                      : _color.lightBlue,
                  fontWeight: FontWeight.bold),
            )),
            width: 190.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: (!FavoritesProvider.isFavouritePokemon!)
                  ? _color.lightBlue
                  : _color.unFavouritePokemonColor,
              border: Border.all(
                width: .1,
                color: (!FavoritesProvider.isFavouritePokemon!)
                    ? _color.lightBlue
                    : _color.lightGraySecond,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
            ),
          ),
        ),
      );
    });
  }
}

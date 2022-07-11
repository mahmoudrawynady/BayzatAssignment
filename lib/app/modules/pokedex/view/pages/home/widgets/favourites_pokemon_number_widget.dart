import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../domain/usecases/pokemon_colors.dart';
import '../../../../providers/favorites_provider.dart';

class FavouritesPokemonNumberWidget extends StatelessWidget {
  const FavouritesPokemonNumberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _color = CustomColors();
    return Consumer<FavoritesProvider>(
        builder: (context, favoritesController, child) {
      return (favoritesController.listPokemonID.isNotEmpty)
          ? Container(
              width: 25.w,
              height: 25.h,
              decoration: BoxDecoration(
                  color: _color.primaryColor,
                  border: Border.all(
                    color: _color.primaryColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
              child: Center(
                  child: Text(
                      favoritesController.listPokemonID.length.toString(),
                      style: const TextStyle(color: Colors.white))))
          : const SizedBox.shrink();
    });
  }
}

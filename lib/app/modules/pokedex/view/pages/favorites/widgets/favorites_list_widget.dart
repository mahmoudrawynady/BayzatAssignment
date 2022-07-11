import 'package:flutter/material.dart';

import '../../../widgets/pokemon_item_future_widget.dart';

class FavoritesListWidget extends StatelessWidget {
  const FavoritesListWidget({Key? key, this.listPokemonID })
      : super(key: key);

  final List<int>? listPokemonID;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 160,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: listPokemonID!.length,
        itemBuilder: (_, index) {
          var pokemon = listPokemonID![index];
          return PokemonItemFutureWidget(
            pokemon: pokemon.toString(),
            router: 'favorites',
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../domain/entities/pokemon_entity.dart';
import '../../../../providers/favorites_provider.dart';
import 'pokemon_base_stats_widget.dart';


class PokemonDetailsContainerWidget extends StatefulWidget {
  const PokemonDetailsContainerWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonEntity pokemon;

  @override
  State<PokemonDetailsContainerWidget> createState() =>
      _PokemonDetailsContainerWidgetState();
}

class _PokemonDetailsContainerWidgetState
    extends ModularState<PokemonDetailsContainerWidget, FavoritesProvider> {
  @override
  Widget build(BuildContext context) {
    return PokemonBaseStatsWidget(
      type: widget.pokemon.types[0],
      statusList: widget.pokemon.status,
    );
  }
}


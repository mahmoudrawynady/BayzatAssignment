import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/providers/pokemon_item_provider.dart';

import '../../../../../commons/pikachu_running_widget.dart';
import '../../domain/entities/pokemon_entity.dart';
import 'error_generic_widget.dart';
import 'pokemon_item_widget.dart';

class PokemonItemFutureWidget extends StatelessWidget {
  const PokemonItemFutureWidget({
    Key? key,
    required this.pokemon,
    required this.router,
  }) : super(key: key);

  final String pokemon;
  final String router;

  @override
  Widget build(BuildContext context) {
    final _controller = PokemonItemProvider();

    return FutureBuilder<PokemonEntity>(
        future: _controller.getPokemon(pokemon: pokemon),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: PikachuRunningWidget(height: 150.h, width: 182.5.w),
              );
            case ConnectionState.active:
              return const Center(
                child: CircularProgressIndicator(color: Colors.green),
              );
            case ConnectionState.none:
              return const LinearProgressIndicator(
                value: 1,
                color: Colors.red,
              );
            default:
              if (snapshot.hasData) {
                return PokemonItemWidget(
                  pokeData: snapshot.data!,
                  router: router,
                );
              } else {
                return const ErrorGenericWidget();
              }
          }
        });
  }
}

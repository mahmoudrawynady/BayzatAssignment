import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/pages/home/widgets/pokemon_list_widget.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/pages/home/widgets/pokemon_not_find_widget.dart';
import 'package:provider/provider.dart';

import '../../../../providers/home_provider.dart';
import '../../../widgets/error_generic_widget.dart';
import 'home_navigation_bottom_bar.dart';

class HomeListPokemonWidget extends StatefulWidget {
  const HomeListPokemonWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeListPokemonWidget> createState() => _HomeListPokemonWidgetState();
}

class _HomeListPokemonWidgetState
    extends ModularState<HomeListPokemonWidget, HomeProvider> {
  HomeProvider? _homeProvider;

  @override
  void initState() {
    _homeProvider = Provider.of<HomeProvider>(context, listen: false);
    _homeProvider!.fetchPokemonList(controller.getLinkInitial());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeProvider, child) {
        if (homeProvider.isLoading()) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.green),
          );
        } else if (homeProvider.getPokemonsList() == null) {
          return const ErrorGenericWidget();
        } else if (homeProvider.getPokemonsList()!.pokemons.isEmpty) {
          return const PokemonNotFindWidget();
        }
        return Column(
          children: [
            PokemonListWidget(
              listPokemon: homeProvider.getPokemonsList(),
            ),
            HomeNavigationBottomBar(
              nextPage: (value) {
                homeProvider.fetchPokemonList(
                    homeProvider.getPokemonsList()!.next,
                    isToBeRefresh: true);
              },
              listPokemon: homeProvider.getPokemonsList(),
            )
          ],
        );
      },
    );
  }
}

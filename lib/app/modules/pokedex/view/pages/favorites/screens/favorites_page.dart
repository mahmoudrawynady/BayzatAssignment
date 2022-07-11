import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/providers/favorites_provider.dart';
import 'package:provider/provider.dart';

import '../../home/widgets/pokemon_not_find_widget.dart';
import '../widgets/favorites_list_widget.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  FavoritesProvider? _favoritesProvider;

  @override
  void initState() {
    _favoritesProvider = Provider.of<FavoritesProvider>(context, listen: false);
    _favoritesProvider!.getFavoritesPokemonList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).r,
          child: Column(
            children: [
              Consumer<FavoritesProvider>(
                builder: (context, favouriteProvider, child) {
                  if (favouriteProvider.isLoading!) {
                    const Center(
                      child: CircularProgressIndicator(color: Colors.green),
                    );
                  } else if (favouriteProvider.listPokemonID.isEmpty) {
                    return const PokemonNotFindWidget();
                  }
                  return FavoritesListWidget(
                      listPokemonID: favouriteProvider.listPokemonID);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

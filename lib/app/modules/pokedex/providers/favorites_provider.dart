import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import '../domain/entities/pokemon_entity.dart';
import '../infra/repositories/pokemon_repositorie.dart';

class FavoritesProvider extends ChangeNotifier {
  final _repository = PokemonRepository();
  List<int> listPokemonID = [];
  bool? isLoading=false;
  static bool? isFavouritePokemon = false;

  Future<PokemonEntity> getFavoritePokemon({required pokemonID}) async {
    var result = await _repository
        .fetchPokemonData(pokemon: pokemonID.toString())
        .onError((error, stackTrace) => throw Error());
    return result;
  }

  getFavoritesPokemonList() async {
    isLoading=true;
    var hivePokemonBox = await Hive.openBox("pokemons");
    var hivePokemonindexList =
        await hivePokemonBox.get('pokemonFavoritesIDList');
    listPokemonID = hivePokemonindexList ?? [];
    Hive.close();
    isLoading=false;
    notifyListeners();
  }

  Future<void> addRemovePokemonFavorite({required int pokemonID}) async {
    var hivePokemonBox = await Hive.openBox("pokemons");
    isPokemonFavourite(pokemonID: pokemonID);
    if (isFavouritePokemon!) {
      listPokemonID.remove(pokemonID);
    } else {
      listPokemonID.add(pokemonID);
    }
    await hivePokemonBox.put('pokemonFavoritesIDList', listPokemonID);
    Hive.close();
  }

  isPokemonFavourite({required int pokemonID}) async {
    var hivePokemonBox = await Hive.openBox("pokemons");
    var hivePokemonindexList =
        await hivePokemonBox.get('pokemonFavoritesIDList');
    listPokemonID = hivePokemonindexList ?? [];
    var isPokemonOnList = listPokemonID.indexWhere((id) => id == pokemonID);
    isFavouritePokemon = (isPokemonOnList >= 0);
    notifyListeners();
  }
}

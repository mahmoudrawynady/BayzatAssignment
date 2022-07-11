import 'package:flutter/cupertino.dart';

import '../domain/entities/pokemon_list_entity.dart';
import '../domain/entities/pokemon_list_item_entity.dart';
import '../infra/repositories/Pokemon_list_repository.dart';

enum typeSearch { search, normal }

class HomeProvider extends ChangeNotifier {
  final _repository = PokemonListRepository();
  var _linkInit = "https://pokeapi.co/api/v2/pokemon?limit=9";
  String _searchPokemon = '';
  bool _isLoading = true;
  PokemonListEntity? _currentPokemonsList;

  getLinkInitial() {
    return _linkInit;
  }

  setSearchPokemon(s) {
    _searchPokemon = s;
  }

  Future<PokemonListEntity> getPokemonListRepository(String link) async {
    return await _repository
        .getPokemonList(link: link)
        .onError((error, stackTrace) => throw Error());
  }

  Future fetchPokemonList(_linkInitArg, {bool isToBeRefresh = false}) async {
    _isLoading = true;
    if (isToBeRefresh) notifyListeners();
    _linkInitArg ??= _linkInit;
    _linkInit = _linkInitArg;
    await getPokemonListRepository(_linkInit).then((pokemonsList) {
      _currentPokemonsList = pokemonsList;
    }).onError((error, stackTrace) {
      print("yess");
      _currentPokemonsList = null;
    });
    _isLoading = false;
    notifyListeners();
  }

  bool isLoading(){
    return _isLoading;
  }

  PokemonListEntity? getPokemonsList(){
    return _currentPokemonsList;
  }

  Future<PokemonListEntity> searchPokemon(String search) async {
    PokemonListEntity _allPokemonListSearch = await getPokemonListRepository(
        "https://pokeapi.co/api/v2/pokemon?limit=1500");
    List<PokemonListItemEntity> listPokemonMatchSearch = [];

    _allPokemonListSearch.pokemons.forEach((element) {
      if (element.name.contains(search)) {
        listPokemonMatchSearch.add(element);
      }
    });

    _allPokemonListSearch.pokemons = listPokemonMatchSearch;
    return _allPokemonListSearch;
  }
}

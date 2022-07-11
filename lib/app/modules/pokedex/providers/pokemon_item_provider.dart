import '../domain/entities/pokemon_entity.dart';
import '../infra/repositories/pokemon_repositorie.dart';

class PokemonItemProvider {
  final _repository = PokemonRepository();
  final bool? isLoading = false;

  Future<PokemonEntity> getPokemon({required String pokemon}) async {
    isLoading!=true;
    var result = await _repository
        .fetchPokemonData(pokemon: pokemon)
        .onError((error, stackTrace) => throw Error());
    return result;
  }
}

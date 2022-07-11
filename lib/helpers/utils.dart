import '../app/modules/pokedex/domain/entities/pokemon_stats_entity.dart';

class PokemonsUtils {
  ///========================intor utils===================================================
  static void printLongLine(String text) {
    final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  static int calculateAveragePower(List<PokemonStatsEntity>? states) {
    int averagePower = 0;
    states!.forEach((element) {
      averagePower += element.value;
    });
    return averagePower~/6;
  }

}

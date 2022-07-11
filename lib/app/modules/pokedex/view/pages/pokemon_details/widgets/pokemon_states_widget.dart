import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../domain/usecases/pokemon_formater.dart';

class PokemonStatesWidget extends StatelessWidget {
  final List<String>? pokemonTypes;

  const PokemonStatesWidget({
    this.pokemonTypes,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10).r,
      child: Text(
        "${PokemonFormatter().formatName(pokemonTypes![0])}${(pokemonTypes!.length > 1) ?
        ", " + PokemonFormatter().formatName(pokemonTypes![1]) : ""}",
        style: const TextStyle(color: Colors.black),
        textAlign: TextAlign.start,
      ),
    );
  }
}

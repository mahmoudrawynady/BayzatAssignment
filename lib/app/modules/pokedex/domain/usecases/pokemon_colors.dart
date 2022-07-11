import 'package:flutter/material.dart';

enum StatusBarThemeType { light, dark, transparent }

class CustomColors {
  final Color primaryColor = Color(0xFF3558CD);
  final Color primaryLightColor = Color(0xFFfa9882);
  final Color primaryDarkColor = Color(0xFF191D26);
  final Color secondaryColor = Color(0xFF222932);
  final Color accentColor = Color(0xFF43C2D5);
  final Color accentLightColor = Color(0xFFEFF3FF);
  final Color rock = const Color(0xFFB69E31);
  final Color ghost = const Color(0xFF70559B);
  final Color steel = const Color(0xFFB7B9D0);
  final Color water = const Color(0xFFF3F9FE);
  final Color grass = const Color(0xFFF3F9EF);
  final Color psychic = const Color(0xFFFB5584);
  final Color ice = const Color(0xFF9AD6DF);
  final Color dark = const Color(0xFF75574C);
  final Color fairy = const Color(0xFFE69EAC);
  final Color normal = const Color(0xFFAAA67F);
  final Color fighting = const Color(0xFFC12239);
  final Color flying = const Color(0xFFA891Ec);
  final Color poison = const Color(0xFFA43E9E);
  final Color ground = const Color(0xFFDEC16B);
  final Color bug = const Color(0xFFA7B723);
  final Color fire = const Color(0xFFFDF1F1);
  final Color electric = const Color(0xFFF9CF30);
  final Color dragon = const Color(0xFF7037FF);
  final Color darkGray = const Color(0xFF212121);
  final Color mediumGray = const Color(0xFF666666);
  final Color lightGray = Color(0xFF6B6B6B);
  final Color lightGraySecond = const Color(0xFFE0E0E0);
  final Color lightBlue = const Color(0xFF3558CD);
  final Color unFavouritePokemonColor = const Color(0xFFD5DEFF);

  Color pokeColor(type) {
    switch (type) {
      case 'rock':
        return CustomColors().rock;
      case 'ghost':
        return CustomColors().ghost;
      case 'steel':
        return CustomColors().steel;
      case 'water':
        return CustomColors().water;
      case 'grass':
        return CustomColors().grass;
      case 'psychic':
        return CustomColors().psychic;
      case 'ice':
        return CustomColors().ice;
      case 'dark':
        return CustomColors().dark;
      case 'fairy':
        return CustomColors().fairy;
      case 'normal':
        return CustomColors().normal;
      case 'fighting':
        return CustomColors().fighting;
      case 'flying':
        return CustomColors().flying;
      case 'poison':
        return CustomColors().poison;
      case 'ground':
        return CustomColors().ground;
      case 'bug':
        return CustomColors().bug;
      case 'fire':
        return CustomColors().fire;
      case 'electric':
        return CustomColors().electric;
      case 'dragon':
        return CustomColors().dragon;
      default:
        return const Color(0xFFEC0344);
    }
  }
}

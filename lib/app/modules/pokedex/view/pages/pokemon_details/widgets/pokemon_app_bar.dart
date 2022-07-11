import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../domain/usecases/pokemon_colors.dart';
import '../../../../domain/usecases/pokemon_formater.dart';

class PokemonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final String id;
  final String router;
  final Color? color;

  const PokemonAppBar({
    Key? key,
    required this.name,
    required this.id,
    required this.router,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formatter = PokemonFormatter();
    return AppBar(
      backgroundColor:color,
      shadowColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Modular.to.pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

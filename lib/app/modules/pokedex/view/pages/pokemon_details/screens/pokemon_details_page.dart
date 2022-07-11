import 'package:flutter/material.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/providers/favorites_provider.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/pages/pokemon_details/widgets/pokemon_infos_widget.dart';
import 'package:provider/provider.dart';
import '../../../../domain/entities/pokemon_entity.dart';
import '../../../../domain/usecases/pokemon_colors.dart';
import '../../favorites/widgets/favourite_button_widget.dart';
import '../widgets/pokemon_app_bar.dart';
import '../widgets/pokemon_details_body_widget.dart';
import '../widgets/pokemon_sprite_widget.dart';

class PokemonDetailsPage extends StatefulWidget {
  const PokemonDetailsPage({
    Key? key,
    required this.pokemon,
    required this.router,
  }) : super(key: key);

  final PokemonEntity pokemon;
  final String router;

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    Provider.of<FavoritesProvider>(context, listen: false)
        .isPokemonFavourite(pokemonID: widget.pokemon.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _color = CustomColors();
    return Scaffold(
      appBar: PokemonAppBar(
          id: widget.pokemon.id.toString(),
          name: widget.pokemon.name,
          router: widget.router,
          color: _color.pokeColor(widget.pokemon.types[0])),
      backgroundColor: _color.pokeColor(widget.pokemon.types[0]),
      body: Stack(
        children: [
          Column(
            children: [
              const Divider(thickness: 1),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      PokemonSpriteWidget(pokemon: widget.pokemon),
                      PokemonInfosWidget(
                        pokeWeight: widget.pokemon.weight,
                        pokeHeight: widget.pokemon.height,
                      ),
                      PokemonDetailsBodyWidget(pokemon: widget.pokemon),
                    ],
                  ),
                ),
              ),
            ],
          ),
          FavoriteButtonWidget(pokemonId: widget.pokemon.id)
        ],
      ),
    );
  }
}

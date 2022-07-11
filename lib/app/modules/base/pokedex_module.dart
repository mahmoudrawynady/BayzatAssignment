import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/splash/view/screens/splash_screen.dart';
import 'package:pokedex_desafio_ioasys_flutter/resources/app_routes.dart';
import '../pokedex/providers/favorites_provider.dart';
import '../pokedex/providers/home_provider.dart';
import '../pokedex/view/pages/favorites/screens/favorites_page.dart';
import '../pokedex/view/pages/home/screens/home_tabs_page.dart';
import '../pokedex/view/pages/pokemon_details/screens/pokemon_details_page.dart';

class PokedexModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => HomeProvider()),
        Bind.factory((i) => FavoritesProvider()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.splash,
            child: (context, args) => const SplashPage()),
        ChildRoute(AppRoute.mainHome,
            transition: TransitionType.fadeIn,
            child: (context, args) => const HomeTabsPage()),
        ChildRoute(
          AppRoute.favourites,
          transition: TransitionType.fadeIn,
          child: (context, args) => const FavoritesPage(),
        ),
        ChildRoute(
          AppRoute.pokemonDetails,
          transition: TransitionType.fadeIn,
          child: (context, args) => PokemonDetailsPage(
            pokemon: args.data[0],
            router: args.data[1],
          ),
        ),
      ];
}

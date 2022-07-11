import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/providers/favorites_provider.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/providers/home_provider.dart';
import 'package:pokedex_desafio_ioasys_flutter/resources/index.dart';
import 'package:provider/provider.dart';
import '../../../pokedex/domain/usecases/themes/my_themes.dart';
import '../../../pokedex/domain/usecases/themes/theme_notification.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _providersList = [
      ChangeNotifierProvider<HomeProvider>(
        create: (_) => HomeProvider(),
      ),
      ChangeNotifierProvider<FavoritesProvider>(
        create: (_) => FavoritesProvider(),
      ),
    ];
    Modular.setInitialRoute(AppRoute.splash);
    return MultiProvider(
      providers: _providersList,
      child: ValueListenableBuilder<ThemeMode>(
          valueListenable: ThemeNotifier.themeNotifier,
          builder: (_, ThemeMode currentMode, __) {
            return ScreenUtilInit(builder: (context, _) {
              return MaterialApp.router(
                title: 'Pokedex',
                debugShowCheckedModeBanner: false,
                theme: MyThemes.lightTheme,
                darkTheme: MyThemes.darkTheme,
                themeMode: currentMode,
                routeInformationParser: Modular.routeInformationParser,
                routerDelegate: Modular.routerDelegate,
              );
            });
          }),
    );
  }
}

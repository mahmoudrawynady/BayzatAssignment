// import 'package:flutter/material.dart';
// import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/presentation/pages/home/home_page.dart';
// import 'package:pokedex_desafio_ioasys_flutter/app/modules/splash/view/screens/splash_screen.dart';
// import '../resources/app_routes.dart';
//
// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     // Getting arguments passed in while calling Navigator.pushNamed
//     switch (settings.name) {
//       //Splash Screen
//       case AppRoute.splash:
//         return _screenInit(const SplashScreen());
//
//       case AppRoute.mainHome:
//         return _screenInit(const HomePage());
//
//       default:
//         // If there is no such named route in the switch statement, e.g. /third
//         return _errorRoute();
//     }
//   }
//
//   static MaterialPageRoute<dynamic> _screenInit(Widget screen) {
//     return MaterialPageRoute<dynamic>(builder: (_) => screen);
//   }
//
//   // static CupertinoPageRoute<dynamic> _screenPresent(Widget screen) {
//   //   return CupertinoPageRoute<dynamic>(
//   //     fullscreenDialog: true,
//   //     builder: (_) => screen,
//   //   );
//   // }
//
//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute<dynamic>(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Error'),
//         ),
//         body: const Center(
//           child: Text('ERROR'),
//         ),
//       );
//     });
//   }
// }

import 'package:flutter/material.dart';
import '../../favorites/screens/favorites_page.dart';
import '../screens/home_page.dart';

class PokedexPagerWidget extends StatelessWidget {
  const PokedexPagerWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          Container(color: Colors.red, child: const HomePage()),
          Container(
            color: Colors.pink,
            child: const FavoritesPage(),
          ),
        ],
      ),
    );
  }
}

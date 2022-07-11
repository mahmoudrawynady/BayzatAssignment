import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/pages/home/widgets/favourites_pokemon_number_widget.dart';

import '../../../../../../../resources/app_strings.dart';

class PokedexTabBarWidget extends StatelessWidget {
  const PokedexTabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TabBar(
        labelColor: Colors.black,
        labelStyle:
            TextStyle(fontSize: 18.sp, fontFamily: AppStrings.fontFamily),
        unselectedLabelColor: Colors.grey,
        indicatorWeight: 4.h,
        tabs: [
          const Tab(text: AppStrings.allPokemonsText),
          Tab(
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              const Text(AppStrings.favouritesText),
              5.horizontalSpace,
              const FavouritesPokemonNumberWidget(),
            ]),
          ),
        ],
      ),
    );
  }
}

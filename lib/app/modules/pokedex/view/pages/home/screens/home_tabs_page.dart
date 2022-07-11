import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/base/view/screens/base_screen.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/view/pages/home/widgets/pokedex_tab_bar_widget.dart';
import '../../../../domain/usecases/pokemon_colors.dart';
import '../widgets/pokedex_app_logo_widget.dart';
import '../widgets/pokedex_pager_widget.dart';

class HomeTabsPage extends StatefulWidget {
  const HomeTabsPage({Key? key}) : super(key: key);

  @override
  _HomeTabsPageState createState() => _HomeTabsPageState();
}

class _HomeTabsPageState extends State<HomeTabsPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BaseScreen(
        statusParStyle: StatusBarThemeType.transparent,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            20.verticalSpace,
            const PokodexAppLogoWidget(),
            15.verticalSpace,
            Divider(height: 5.h, thickness: 2),
            const PokedexTabBarWidget(),
            const PokedexPagerWidget(),
          ],
        ),
      ),
    );
  }
}

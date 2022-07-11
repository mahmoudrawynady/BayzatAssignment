import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/domain/usecases/pokemon_colors.dart';
import '../../../../../resources/app_image_paths.dart';
import '../../../base/view/screens/base_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Modular.to.pushReplacementNamed('home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _color=CustomColors();
    return BaseScreen(
        statusParStyle: StatusBarThemeType.light,
        backgroundColor: _color.primaryColor,
        body: _buildScreen());
  }

  Widget _buildScreen() {
    return Center(
      child: Image(
        image: const AssetImage(AppImages.pokedex_splash_img),
        height: 200.h,
        width: 200.w,
      ),
    );
  }
}

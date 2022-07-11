import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../resources/app_image_paths.dart';

class PokodexAppLogoWidget extends StatelessWidget {
  const PokodexAppLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage(AppImages.pokedex_home_img),
      height: 34.h,
      width: 134.w,
      fit: BoxFit.fill,
    );
  }
}

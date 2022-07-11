import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGoToFavoritesWidget extends StatelessWidget {
  const HomeGoToFavoritesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 22.55.h),
      child: IconButton(
          padding: const EdgeInsets.all(0),
          iconSize: 30.sp,
          color: Theme.of(context).colorScheme.primary,
          onPressed: () {
            Modular.to.pushNamed(
              'favorites',
            );
          },
          icon:  ImageIcon(
            AssetImage('assets/icons/heartIcon.png'),
            size: 30.sp,
          )),
    );
  }
}

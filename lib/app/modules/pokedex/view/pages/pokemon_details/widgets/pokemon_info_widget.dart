import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonInfoWidget extends StatelessWidget {
  final bool useIcon;
  final String info;
  final String infoType;

  const PokemonInfoWidget({
    Key? key,
    required this.useIcon,
    required this.info,
    required this.infoType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 1).r,
              child: Text(
                infoType,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              )),
          Text(
            info,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
            ),
          ),
        ]);
  }
}

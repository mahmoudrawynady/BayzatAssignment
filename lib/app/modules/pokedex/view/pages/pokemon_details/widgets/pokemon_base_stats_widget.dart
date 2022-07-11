import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/resources/app_strings.dart';
import '../../../../domain/entities/pokemon_stats_entity.dart';
import 'pokemon_base_stats_list.dart';
import '../../../../domain/usecases/pokemon_colors.dart';

class PokemonBaseStatsWidget extends StatelessWidget {
  const PokemonBaseStatsWidget({
    Key? key,
    required this.type,
    required this.statusList,
  }) : super(key: key);

  final String type;
  final List<PokemonStatsEntity> statusList;
  @override
  Widget build(BuildContext context) {
    final _color = CustomColors();

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          15.verticalSpace,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 10, left: 15).r,
            child: Text(
              AppStrings.baseStatesText,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(thickness: 1),
          PokemonBaseStatsList(statusList: statusList, type: type),
        ],
      ),
    );
  }
}

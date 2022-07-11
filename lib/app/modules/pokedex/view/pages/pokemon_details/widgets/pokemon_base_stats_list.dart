import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_desafio_ioasys_flutter/app/modules/pokedex/domain/entities/pokemon_stats_entity.dart';

import '../../../../../../../helpers/utils.dart';
import '../../../../domain/usecases/pokemon_colors.dart';
import '../../../../domain/usecases/pokemon_formater.dart';

class PokemonBaseStatsList extends StatelessWidget {
  const PokemonBaseStatsList({
    Key? key,
    required this.statusList,
    required this.type,
  }) : super(key: key);

  final List<PokemonStatsEntity> statusList;
  final String type;

  @override
  Widget build(BuildContext context) {
    final _formatter = PokemonFormatter();
    final _color = CustomColors();
    statusList.add(PokemonStatsEntity(
        name: "Avgp", value: PokemonsUtils.calculateAveragePower(statusList)));
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) {
              final status = statusList[index];
              return Container(
                margin: const EdgeInsets.only(left: 15, right: 15).r,
                padding: const EdgeInsets.only(top: 10).r,
                height: 70.h,
                child: Column(children: [
                  Row(children: [
                    Text(_formatter.formatStsName(status.name),
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: _color.mediumGray,
                        )),
                    10.horizontalSpace,
                    Text(
                      status.value.toString(),
                    ),
                  ]),
                  10.verticalSpace,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: LinearProgressIndicator(
                      color: (status.name == 'special-attack' ||
                              status.name == 'special-defense')
                          ? Colors.yellow
                          : Colors.red,
                      value: double.parse(status.value.toString()) / 100,
                      semanticsLabel: status.name,
                      backgroundColor: _color.lightGraySecond,
                    ),
                  )
                ]),
              );
            }),
      ],
    );
  }
}

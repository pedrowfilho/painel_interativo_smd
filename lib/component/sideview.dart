import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/component/clock.dart';
import 'package:painel_interativo_smd/component/proximasaulas.dart';
import 'package:painel_interativo_smd/data.dart';
import 'package:painel_interativo_smd/style/style.dart';
import '../config/size_config.dart';
import '../style/colors.dart';

class SideView extends StatelessWidget {
  const SideView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),*/
        Container(
          /*decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: AppColors.iconGray,
                  blurRadius: 15.0,
                  offset: Offset(15.0, 10.0))
            ],
          ),*/
          child: Clock(),
        ),
        Row(
          children: [Expanded(child: Divider())],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 6,
        ),
        /*Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Próximas aulas',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '25 Out 2022',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
              proximasAulas.length,
              (index) => ProximasAulas(
                    icon: proximasAulas[index]["icon"],
                    disciplina: proximasAulas[index]["disciplina"],
                    professor: proximasAulas[index]["professor"],
                    sala: proximasAulas[index]["sala"],
                  )),
        ),*/
        /*SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),*/
      ],
    );
  }
}

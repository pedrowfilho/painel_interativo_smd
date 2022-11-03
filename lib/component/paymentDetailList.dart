import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/component/paymentListTile.dart';
import 'package:painel_interativo_smd/data.dart';
import 'package:painel_interativo_smd/style/style.dart';
import '../config/size_config.dart';
import '../style/colors.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: AppColors.iconGray,
                  blurRadius: 15.0,
                  offset: Offset(15.0, 10.0))
            ],
          ),
          //child: Image.asset("assets/card.png"),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
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
              recentActivities.length,
              (index) => PaymentListTile(
                    icon: recentActivities[index]["icon"],
                    disciplina: recentActivities[index]["disciplina"],
                    professor: recentActivities[index]["professor"],
                    sala: recentActivities[index]["sala"],
                  )),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        /*Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Notícias',
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
              upcomingPayments.length,
              (index) => PaymentListTile(
                    icon: upcomingPayments[index]["icon"],
                    label: upcomingPayments[index]["label"],
                    amount: upcomingPayments[index]["amount"],
                  )),
        ),*/
      ],
    );
  }
}

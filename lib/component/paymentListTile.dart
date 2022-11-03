import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/colors.dart';
import '../style/style.dart';

class PaymentListTile extends StatelessWidget {
  final String? icon;
  final String? disciplina;
  final String? professor;
  final String? sala;

  const PaymentListTile(
      {required this.icon, this.disciplina, this.professor, this.sala});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20.0),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50.0,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          icon!,
          width: 20.0,
        ),
      ),
      title: PrimaryText(
        text: disciplina!,
        size: 14.0,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: professor!,
            size: 12,
            color: AppColors.secondary,
          ),
          PrimaryText(
            text: sala!,
            size: 14,
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}

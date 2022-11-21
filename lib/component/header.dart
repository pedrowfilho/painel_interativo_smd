import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/component/clock.dart';
import 'package:painel_interativo_smd/config/responsive.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import '../style/style.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: 'Checkpoint',
                size: 35.0,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: 'Sistemas e Mídias Digitais - UFC',
                size: 18.0,
                color: AppColors.primary,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}

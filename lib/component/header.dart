import 'package:flutter/material.dart';
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
                text: 'Dashboard',
                size: 30.0,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: 'Projeto Dashboard',
                size: 16.0,
                color: AppColors.secondary,
              )
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                contentPadding: EdgeInsets.only(left: 40.0, right: 5),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: AppColors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: AppColors.white)),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.black,
                ),
                hintText: 'buscar',
                hintStyle:
                    TextStyle(color: AppColors.secondary, fontSize: 14.0)),
          ),
        )
      ],
    );
  }
}

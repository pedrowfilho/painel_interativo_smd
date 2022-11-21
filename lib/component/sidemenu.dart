import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:painel_interativo_smd/style/style.dart';
import '../config/size_config.dart';
import '../style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/home.svg'),
                iconSize: 20,
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/clipboard.svg'),
                iconSize: 20,
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/invoice.svg'),
                iconSize: 20,
                padding: EdgeInsets.symmetric(vertical: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

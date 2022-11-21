import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/component/sidemenu.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import 'package:painel_interativo_smd/style/style.dart';
import 'config/responsive.dart';

class MapaDeSalas extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //elevation: 2,
        backgroundColor: AppColors.secondaryBg,
        /*title: Text('Mapa de salas'),
        titleTextStyle: TextStyle(
            color: AppColors.black, fontSize: 20, fontWeight: FontWeight.w500),*/
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: SafeArea(
        child: Row(children: [
          Expanded(
            flex: 1,
            child: SideMenu(),
          ),
          Expanded(
            flex: 12,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              PrimaryText(
                text: "Mapa de salas",
                size: 36,
                color: AppColors.black,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

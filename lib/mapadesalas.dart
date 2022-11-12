import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import 'package:painel_interativo_smd/style/style.dart';

class MapaDeSalas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        elevation: 10,
        backgroundColor: AppColors.secondaryBg,
        title: Text('Mapa de salas'),
        titleTextStyle: TextStyle(
            color: AppColors.black, fontSize: 20, fontWeight: FontWeight.w500),
      ),
      /*body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          PrimaryText(
            text: "Mapa de salas",
            size: 36,
            color: AppColors.black,
          ),
        ]),
      ),*/
    );
  }
}

import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/style/style.dart';

class MapaDeSalas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [PrimaryText(text: "Mapa de salas")]),
      ),
    );
  }
}

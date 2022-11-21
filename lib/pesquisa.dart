import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const Pesquisa());
}

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  WebViewController? controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: SafeArea(
            child: WebView(
              initialUrl:
                  "https://forms.zohopublic.com/checkpoint/form/Avaliaodependnciasdocurso/formperma/H0gPoUk0MMGTHtELOnBIuBDti5hiupMkZeGo7JLAIOA",
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController wvc) {
                controller = wvc;
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/carousel.dart';
import 'package:painel_interativo_smd/component/historyTable.dart';
import 'package:painel_interativo_smd/config/responsive.dart';
import 'package:painel_interativo_smd/config/size_config.dart';
import 'package:painel_interativo_smd/main.dart';
import 'package:painel_interativo_smd/mapadesalas.dart';
import 'package:painel_interativo_smd/pesquisa.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import 'package:painel_interativo_smd/component/appBarActionItems';
import 'package:painel_interativo_smd/style/style.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'component/header.dart';
import 'component/infoCard.dart';
import 'component/sideview.dart';
import 'component/sidemenu.dart';

class Dashboard extends StatelessWidget {
  //GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WebViewController controller;
    final Uri url = Uri.parse(
        'https://forms.zohopublic.com/checkpoint/form/Avaliaodependnciasdocurso/formperma/H0gPoUk0MMGTHtELOnBIuBDti5hiupMkZeGo7JLAIOA');
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 10,
              child: SafeArea(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      Carousel(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MapaDeSalas()),
                                );
                              },
                              child: InfoCard(
                                icon: 'assets/mapa-de-sala.svg',
                                label: 'Mapa',
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                /*SafeArea(
                                  child: WebView(
                                    initialUrl: "https://forms.zohopublic.com/checkpoint/form/Avaliaodependnciasdocurso/formperma/H0gPoUk0MMGTHtELOnBIuBDti5hiupMkZeGo7JLAIOA",
                                    javascriptMode: JavascriptMode.unrestricted,
                                    onWebViewCreated: (WebViewController wvc) {
                                      controller = wvc;
                                    },
                                  ),
                                );*/
                                launchUrl(url);
                                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pesquisa()),
                                );*/
                              },
                              child: InfoCard(
                                icon: 'assets/pesquisa.svg',
                                label: 'Pesquisa',
                              ),
                            ),
                            InfoCard(
                              icon: 'assets/invoice.svg',
                              label: 'Notícias',
                            ),
                            InfoCard(
                              icon: 'assets/eventos.svg',
                              label: 'Eventos',
                            ),
                          ],
                        ),
                      ),
                      /*SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),*/
                      //HistoryTable(),
                      if (!Responsive.isDesktop(context)) SideView()
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      children: [SideView()],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

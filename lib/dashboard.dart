import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/component/barChartComponent.dart';
import 'package:painel_interativo_smd/component/historyTable.dart';
import 'package:painel_interativo_smd/config/responsive.dart';
import 'package:painel_interativo_smd/config/size_config.dart';
import 'package:painel_interativo_smd/mapadesalas.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import 'package:painel_interativo_smd/component/appBarActionItems';
import 'package:painel_interativo_smd/style/style.dart';

import 'component/header.dart';
import 'component/infoCard.dart';
import 'component/paymentDetailList.dart';
import 'component/sidemenu.dart';

class Dashboard extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      /*drawer: SizedBox(
        width: 100,
        child: SideMenu(),
      ),*/
      /*appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  _drawerKey.currentState?.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: AppColors.black,
                ),
              ),
              actions: [
                AppBarActionItems(),
              ],
            )
          : PreferredSize(child: SizedBox(), preferredSize: Size.zero),*/
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: SideMenu(),
              ),*/
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
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MapaDeSalas()),
                                );
                              },
                              child: InfoCard(
                                  icon: 'assets/credit-card.svg',
                                  label: 'Mapa de salas',
                                  amount: '\$1200'),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MapaDeSalas()),
                                );
                              },
                              child: InfoCard(
                                  icon: 'assets/bank.svg',
                                  label: 'Pesquisa',
                                  amount: '\$150'),
                            ),
                            InfoCard(
                                icon: 'assets/transfer.svg',
                                label: 'Notícias',
                                amount: '\$1500'),
                            InfoCard(
                                icon: 'assets/invoice.svg',
                                label: 'Docs',
                                amount: '\$1500'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(
                                text: 'Balance',
                                size: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.secondary,
                              ),
                              PrimaryText(
                                  text: 'Notícias',
                                  size: 30,
                                  fontWeight: FontWeight.w800),
                            ],
                          ),
                          PrimaryText(
                            text: 'Past 30 DAYS',
                            size: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 3,
                      ),
                      Container(
                        height: 180,
                        child: BarChartComponent(),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 5,
                      ),*/
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: 'History',
                            size: 30,
                            fontWeight: FontWeight.w800,
                          ),
                          PrimaryText(
                            text: 'Transaction of last 6 months',
                            size: 16,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 3,
                      ),
                      HistoryTable(),
                      if (!Responsive.isDesktop(context)) PaymentDetailList()
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
                      children: [PaymentDetailList()],
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

import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/component/barChartComponent.dart';
import 'package:painel_interativo_smd/component/historyTable.dart';
import 'package:painel_interativo_smd/config/size_config.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import 'package:painel_interativo_smd/component/appBarActionItems';
import 'package:painel_interativo_smd/style/style.dart';

import 'component/header.dart';
import 'component/infoCard.dart';
import 'component/paymentDetailList.dart';
import 'component/sidemenu.dart';

class Dashboard extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
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
                            InfoCard(
                                icon: 'assets/credit-card.svg',
                                label: 'Transafer via \nCard number',
                                amount: '\$1200'),
                            InfoCard(
                                icon: 'assets/transfer.svg',
                                label: 'Transafer via \nOnline Banks',
                                amount: '\$150'),
                            InfoCard(
                                icon: 'assets/bank.svg',
                                label: 'Transafer \nSame Bank',
                                amount: '\$1500'),
                            InfoCard(
                                icon: 'assets/invoice.svg',
                                label: 'Transafer to \nOther Bank',
                                amount: '\$1500'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      Row(
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
                                  text: '\$1500',
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
                      ),
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
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.secondaryBg,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [AppBarActionItems(), PaymentDetailList()],
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

import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/config/size_config.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import 'package:painel_interativo_smd/component/appBarActionItems';
import 'package:painel_interativo_smd/style/style.dart';

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
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  child: Column(
                    children: [
                      Row(
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
                                  text: 'Teste Projeto Dashboard',
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
                                  contentPadding:
                                      EdgeInsets.only(left: 40.0, right: 5),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: AppColors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: AppColors.white)),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: AppColors.black,
                                  ),
                                  hintText: 'buscar',
                                  hintStyle: TextStyle(
                                      color: AppColors.secondary,
                                      fontSize: 14.0)),
                            ),
                          )
                        ],
                      )
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
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
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

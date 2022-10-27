import 'package:flutter/material.dart';
import 'package:painel_interativo_smd/data.dart';
import 'package:painel_interativo_smd/style/colors.dart';
import 'package:painel_interativo_smd/style/style.dart';

class HistoryTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
              transactionHistory.length,
              (index) => TableRow(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 20),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundImage: NetworkImage(
                                transactionHistory[index]['avatar']!),
                          ),
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['label']!,
                          size: 16,
                          color: AppColors.secondary,
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['time']!,
                          size: 16,
                          color: AppColors.secondary,
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['amount']!,
                          size: 16,
                          color: AppColors.secondary,
                        ),
                        PrimaryText(
                          text: transactionHistory[index]['status']!,
                          size: 16,
                          color: AppColors.secondary,
                        ),
                      ])),
        ),
      ),
    );
  }
}

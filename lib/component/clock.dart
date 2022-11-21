import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:painel_interativo_smd/style/colors.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR', null);
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate =
        DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_BR').format(now);

    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedTime,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w600,
                    fontSize: 64),
              ),
              Text(
                formattedDate,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[600],
                    fontSize: 20),
              ),
            ],
          ),
        ),
        /*Spacer(
          flex: 1,
        ),*/
      ],
    );
  }
}

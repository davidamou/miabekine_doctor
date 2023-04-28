import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:miabekinedoctor/utils/themes/light.dart';

class DayView extends StatelessWidget {
  final DateTime date;
  final bool isToday;
  final bool? dateSelected;

  const DayView(
      {Key? key,
      required this.date,
      required this.isToday,
      this.dateSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        color: isToday ? primarySwatch.shade50 : null,
        border: dateSelected! ? Border.all(color: primary) : null,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isToday ? primary : primarySwatch.shade50,
              shape: BoxShape.circle,
            ),
            child: Text(
              date.day < 10 ? "0${date.day}" : "${date.day}",
              style: TextStyle(color: isToday ? Colors.white : null),
            ),
          ),
          const SizedBox(height: 4.0),
          Text(DateFormat.E().format(date)),
          const SizedBox(height: 8.0),
          // const Text(
          //   "∙∙",
          //   style: TextStyle(color: primary, fontSize: 12.0),
          // ),
        ],
      ),
    );
  }
}

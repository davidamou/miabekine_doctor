import 'package:flutter/material.dart';
import 'package:miabekinedoctor/screens/home/components/day_view.dart';

class Calendar extends StatefulWidget {
  final Function(DateTime dateTime)? onTap;
  final int dateSelected;

  const Calendar({super.key, this.onTap, required this.dateSelected});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int _dateSelected = 0;
  DateTime _dateOfToday = DateTime.now();

  @override
  Widget build(BuildContext context) {
    int dayOfWeek = 7;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int day = 0; day < dayOfWeek; day++)
            Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(32.0),
                onTap: () => setState(() {
                  _dateSelected = day;
                  widget.onTap?.call(
                    DateTime.now().add(
                      Duration(days: day),
                    ),
                  );
                }),
                child: DayView(
                  date: _dateOfToday.add(Duration(days: day)),
                  isToday: _isToday(day),
                  dateSelected: day == _dateSelected,
                ),
              ),
            )
        ],
      ),
    );
  }

  bool _isToday(int day) {
    var date = DateTime.now();
    var nextDate = date.add(Duration(days: day));

    if (date == nextDate) {
      return true;
    } else {
      return false;
    }
  }
}

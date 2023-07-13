import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:safayet_technical_test/pages/page1/widgets/activity/activity_day_picker.dart';
import 'package:safayet_technical_test/pages/page1/widgets/activity/activity_timer.dart';

class ActivityTab extends StatelessWidget {
  ActivityTab({Key? key}) : super(key: key);

  late List<String> days;
  late int today;

  void getMonth() {
    final now = DateTime.now();
    final totalDays = daysInMonth(now);

    days = List.generate(totalDays + 1, (index) {
      final date = DateTime(now.year, now.month, index);

      return DateFormat.E().format(date);
    });
    days.removeAt(0);
    today = now.day;

    print(days);
  }

  int daysInMonth(DateTime date) {
    var firstDayThisMonth = DateTime(date.year, date.month);
    var firstDayNextMonth = DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  @override
  Widget build(BuildContext context) {
    getMonth();

    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white54,
      ),
      child: const Column(
        children: [
          // Day picker
          DayPicker(),

          // Time??
          Expanded(
            child: ActivityTimer(),
          ),
        ],
      ),
    );
  }
}

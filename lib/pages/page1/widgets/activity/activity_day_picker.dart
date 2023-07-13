import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayPicker extends StatefulWidget {
  const DayPicker({
    Key? key,
  }) : super(key: key);

  @override
  State<DayPicker> createState() => _DayPickerState();
}

class _DayPickerState extends State<DayPicker> {
  List<String> days = [];
  DateTime today = DateTime.now();
  int currentMonth = DateTime.now().month;
  final scrollController = ScrollController();

  @override
  void initState() {
    getMonth(currentMonth);
    scrollController.addListener(() {
      setState(() {
        currentMonth++;
      });

      if (scrollController.position.maxScrollExtent == scrollController.position.pixels) {
        getMonth(currentMonth);
      }
    });

    super.initState();
  }

  void getMonth(int month) {
    final totalDays = daysInMonth(today, month);

    final tempDays = List.generate(totalDays + 1, (index) {
      final date = DateTime(today.year, month, index);

      return DateFormat.E().format(date);
    });
    tempDays.removeAt(0);

    days.addAll(tempDays);
    print(days);
  }

  int daysInMonth(DateTime date, int month) {
    var firstDayThisMonth = DateTime(date.year, month);
    var firstDayNextMonth = DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        controller: scrollController,
        itemCount: days.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          print("month ${days[index]}");
          return Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            height: 40.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  days[index],
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: (today.day == index) ? Colors.pinkAccent : null,
                    borderRadius:
                        (today.day == index) ? BorderRadius.circular(50.0) : null,
                  ),
                  child: Center(child: Text("${index + 1}")),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

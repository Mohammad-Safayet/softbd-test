import 'package:flutter/material.dart';

class DayPicker extends StatelessWidget {
  const DayPicker({
    Key? key,
    required this.days,
    required this.today,
  }) : super(key: key);

  final List<String> days;
  final int today;

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
        itemCount: days.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          print("month ${days[index]}");
          return Container(
            margin: const EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
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
                    color: (today == index) ? Colors.pinkAccent : null,
                    borderRadius:
                        (today == index) ? BorderRadius.circular(50.0) : null,
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

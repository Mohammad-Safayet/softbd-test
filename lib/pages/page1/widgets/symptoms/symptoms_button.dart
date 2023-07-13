import 'package:flutter/material.dart';

class SymptomsButton extends StatelessWidget {
  const SymptomsButton({
    Key? key,
    required this.title,
    required this.iconString,
  }) : super(key: key);

  final String title;
  final String iconString;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("$title clicked");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        height: 70.0,
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // icon
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500.0),
                color: Colors.pinkAccent.withOpacity(0.1),
              ),
              height: 35.0,
              width: 35.0,
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(iconString),
            ),
            const SizedBox(
              width: 24.0,
            ),
            // text
            Flexible(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

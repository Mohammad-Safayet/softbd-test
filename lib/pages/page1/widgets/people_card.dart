import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget {
  const PeopleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Add People Card tapped");
      },
      child: Card(
        color: Colors.transparent,
        elevation: 4.0,
        child: Container(
          height: 200.0,
          padding: const EdgeInsets.only(
            top: 12.0,
            left: 16.0,
            bottom: 8.0,
            right: 24.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            image: const DecorationImage(
              scale: 3.00,
              image: AssetImage(
                'assets/Group 3183.png',
              ),
              alignment: Alignment.bottomRight,
            ),
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Add my partner",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }
}

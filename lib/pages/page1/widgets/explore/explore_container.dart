import 'package:flutter/material.dart';

import 'category_button.dart';

class ExploreContainer extends StatelessWidget {
  const ExploreContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              "Explore",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CategoryButton(title: "Category 1"),
                CategoryButton(title: "Category 2"),
                CategoryButton(title: "Category 3"),
                CategoryButton(title: "Category 4"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

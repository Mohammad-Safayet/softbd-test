import 'package:flutter/material.dart';
import 'package:safayet_technical_test/pages/page1/widgets/activity/activity_tab.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ActivityContainer extends StatelessWidget {
  const ActivityContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    return SizedBox(
      height: 600.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                ActivityTab(),
                ActivityTab(),
                ActivityTab(),
                ActivityTab(),
              ],
            ),
          ),
          Container(
            height: 50.0,
            padding: const EdgeInsets.only(top: 16.0),
            child: SmoothPageIndicator(
              controller: controller, // PageController
              count: 4,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.white,
                activeDotColor: Colors.pinkAccent,
              ), // your preferred effect
              onDotClicked: (index) {},
            ),
          )
        ],
      ),
    );
  }
}

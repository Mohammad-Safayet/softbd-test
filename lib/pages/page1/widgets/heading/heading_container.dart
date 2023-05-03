import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safayet_technical_test/pages/page1/widgets/heading/heading_controller.dart';

import 'heading_button.dart';

class HeadingContainer extends StatelessWidget {
  HeadingContainer({Key? key}) : super(key: key);

  final _controller = HeadingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      padding: const EdgeInsets.all(12.0),
      child: Obx(() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeadingButton(
              title: "Cycle",
              iconString: 'assets/Icon.png',
              onClick: () {
                _controller.onCardClick(0);
              },
              isActive: _controller.activeCard.value == 0,
            ),
            HeadingButton(
              title: "My Health",
              iconString: 'assets/Group 3178.png',
              onClick: () {
                _controller.onCardClick(1);
              },
              isActive: _controller.activeCard.value == 1,
            ),
            HeadingButton(
              title: "Shop",
              iconString: 'assets/Icon_basket.png',
              onClick: () {
                _controller.onCardClick(2);
              },
              isActive: _controller.activeCard.value == 2,
            ),
          ],
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:safayet_technical_test/pages/page1/widgets/bottomNavigation/bottom_navation_controller.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);

  final _controller = BottomNavigationController();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.shade300,
        currentIndex: _controller.activeIndex.value,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Container(
              margin: EdgeInsets.zero,
              width: double.infinity,
              height: kBottomNavigationBarHeight * 1.20,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12.0),
                ),
                color: _controller.activeIndex.value == 0
                    ? Colors.pinkAccent
                    : Colors.grey.shade300,
              ),
              child: IconButton(
                onPressed: () {
                  _controller.changeIndex(0);
                },
                icon: const ImageIcon(
                  AssetImage('assets/Icon4.png'),
                ),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: double.infinity,
              height: kBottomNavigationBarHeight * 1.20,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                ),
                color: _controller.activeIndex.value == 1
                    ? Colors.pinkAccent
                    : Colors.grey.shade300,
              ),
              child: IconButton(
                onPressed: () {
                  _controller.changeIndex(1);
                },
                icon: const ImageIcon(
                  AssetImage('assets/Group 3185.png'),
                ),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: double.infinity,
              height: kBottomNavigationBarHeight * 1.20,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                ),
                color: _controller.activeIndex.value == 2
                    ? Colors.pinkAccent
                    : Colors.grey.shade300,
              ),
              child: IconButton(
                onPressed: () {
                  _controller.changeIndex(2);
                },
                icon: const ImageIcon(
                  AssetImage('assets/Group 3184.png'),
                ),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: double.infinity,
              height: kBottomNavigationBarHeight * 1.20,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                ),
                color: _controller.activeIndex.value == 3
                    ? Colors.pinkAccent
                    : Colors.grey.shade300,
              ),
              child: IconButton(
                onPressed: () {
                  _controller.changeIndex(3);
                },
                icon: const ImageIcon(
                  AssetImage('assets/Send.png'),
                ),
              ),
            ),
            label: "",
          ),
        ],
      );
    });
  }
}

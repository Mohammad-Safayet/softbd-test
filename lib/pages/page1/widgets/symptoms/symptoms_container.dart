import 'package:flutter/material.dart';
import 'package:safayet_technical_test/pages/page1/widgets/symptoms/symptoms_button.dart';

class SymptomsContainer extends StatelessWidget {
  const SymptomsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: SymptomsButton(
            title: "Enter Your Symptoms",
            iconString: "assets/plus.png",
          ),
        ),
        SizedBox(
          width: 25.0,
        ),
        Expanded(
          child: SymptomsButton(
            title: "Log Your Symptoms",
            iconString: "assets/Icon3.png",
          ),
        ),
      ],
    );
  }
}

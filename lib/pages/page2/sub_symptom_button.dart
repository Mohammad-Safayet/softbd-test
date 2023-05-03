import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:safayet_technical_test/pages/page2/models/sub_symptoms.dart';
import 'package:safayet_technical_test/pages/page2/page_2_screen_controller.dart';
import 'package:safayet_technical_test/pages/page2/sub_symptom_button_controller.dart';

class SubSymptomButton extends StatelessWidget {
  SubSymptomButton({
    Key? key,
    required this.controller,
    required this.symptoms,
  }) : super(key: key);

  final Page2Controller controller;
  final SubSymptoms symptoms;

  final _buttonController = SubSymptomButtonController();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: () async {
          _buttonController.select();
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(
                "Are you sure you want to add this",
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    controller.addSymptom(symptoms);
                    Navigator.pop(context);
                  },
                  child: Text("Yes"),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.removeSymptom(symptoms);
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
              ],
            ),
          );
          _buttonController.deselct();
        },
        child: Container(
          height: 80.0,
          width: 80.0,
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500.0),
                  color: controller.addedSymptoms.contains(symptoms) ||
                          _buttonController.isButtonSelected.value
                      ? Colors.pinkAccent
                      : Colors.white,
                  border: Border.all(
                    color: Colors.pinkAccent,
                  ),
                ),
                child: Image.network(
                  symptoms.icon,
                ),
              ),
              Expanded(
                child: Text(
                  symptoms.title,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

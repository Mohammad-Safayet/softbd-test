import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:safayet_technical_test/pages/page2/page_2_screen_controller.dart';
import 'package:safayet_technical_test/pages/page2/sub_symptom_button.dart';

class Page2HomeScreen extends StatelessWidget {
  Page2HomeScreen({Key? key}) : super(key: key);

  final _controller = Page2Controller();

  @override
  Widget build(BuildContext context) {
    _controller.getData();
    final now = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        leading: Container(
          height: 45.0,
          width: 45.0,
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Card(
            elevation: 2.0,
            child: IconButton(
              padding: const EdgeInsets.all(8.0),
              icon: const ImageIcon(
                AssetImage('assets/Polygon 9.png'),
                size: 20.0,
                color: Colors.pinkAccent,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.d().format(now),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              DateFormat.EEEE().format(now),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Container(
            height: 30.0,
            width: 30.0,
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(500.0),
            ),
            child: Icon(
              Icons.question_mark_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Obx(
              () {
                return Container(
                  child: _controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.only(bottom: 80.0),
                          itemCount: _controller.symptoms.length,
                          itemBuilder: (context, index) {
                            final symptom = _controller.symptoms[index];
                            return Container(
                              height: 130.0,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      symptom.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: symptom.sub_symptom.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index2) {
                                        final subSymptom =
                                            symptom.sub_symptom[index2];
                                        return SubSymptomButton(
                                          controller: _controller,
                                          symptoms: subSymptom,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext dialogContext) {
                      return AlertDialog(
                        title: Text('Added Symtoms'),
                        content: _controller.addedSymptoms.isEmpty
                            ? Text("No added symptoms found!")
                            : Container(
                                height: 250.0,
                                width: 200.0,
                                child: ListView.builder(
                                  itemCount: _controller.addedSymptoms.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.all(12.0),
                                      child: ListTile(
                                        leading: Image.network(_controller
                                            .addedSymptoms[index].icon),
                                        title: Text(_controller
                                            .addedSymptoms[index].title),
                                      ),
                                    );
                                  },
                                ),
                              ),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Close'),
                            onPressed: () {
                              Navigator.of(dialogContext)
                                  .pop(); // Dismiss alert dialog
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                          child: Image.asset('assets/Polygon 1.png'),
                        ),
                      ),
                      Text(
                        "View The selected items",
                        style:
                            Theme.of(context).textTheme.titleSmall?.copyWith(
                                  color: Colors.white.withOpacity(0.8),
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

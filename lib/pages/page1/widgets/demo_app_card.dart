import 'package:flutter/material.dart';

class DemoAppCard extends StatelessWidget {
  const DemoAppCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Demo App Card tapped");
      },
      child: Card(
        elevation: 4.0,
        color: Colors.transparent,
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
            borderRadius: BorderRadius.circular(12.0),
            image: const DecorationImage(
              scale: 2.50,
              image: AssetImage(
                'assets/Group 2131.png',
              ),
              alignment: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              //Title
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Demo App",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),

              //Paragraph
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

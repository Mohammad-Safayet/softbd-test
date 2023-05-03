import 'package:flutter/material.dart';

class SubscriptionCardButton extends StatelessWidget {
  const SubscriptionCardButton({
    Key? key,
    required this.child, required this.color,
  }) : super(key: key);

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
        print("Subscription card tapped");
      },
      child: Card(
        elevation: 2.0,
        color: Colors.grey.shade300,
        child: Container(
          height: 150.0,
          width: MediaQuery.of(context).size.width * 0.40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: color,
          ),
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}

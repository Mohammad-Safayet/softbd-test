import 'package:flutter/material.dart';
import 'package:safayet_technical_test/pages/page1/widgets/subscription_plan/subscription_card_button.dart';

class SubscriptionPlanContainer extends StatelessWidget {
  const SubscriptionPlanContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.0,
      child: Column(
        children: [
          //Title
          Text(
            "Unlock Premium",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.pinkAccent,
                ),
          ),

          const SizedBox(
            height: 24.0,
          ),
          //Options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SubscriptionCardButton(
                color: Colors.pinkAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "30-Day Free Trial",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Flexible(
                        child: Text(
                          "Then BDT 340,000/yr only BDT 283.84/month",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SubscriptionCardButton(
                color: Colors.white,
                child: Center(
                  child: Text(
                    "1 month BDT 700.0",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

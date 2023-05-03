import 'package:flutter/material.dart';
import 'package:safayet_technical_test/pages/page1/widgets/activity/activity_container.dart';
import 'package:safayet_technical_test/pages/page1/widgets/bottomNavigation/bottom_navigation.dart';
import 'package:safayet_technical_test/pages/page1/widgets/demo_app_card.dart';
import 'package:safayet_technical_test/pages/page1/widgets/explore/explore_container.dart';
import 'package:safayet_technical_test/pages/page1/widgets/heading/heading_container.dart';
import 'package:safayet_technical_test/pages/page1/widgets/people_card.dart';
import 'package:safayet_technical_test/pages/page1/widgets/subscription_plan/subscription_plan_container.dart';
import 'package:safayet_technical_test/pages/page1/widgets/symptoms/symptoms_container.dart';
import 'package:safayet_technical_test/pages/page2/page_2_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          padding: const EdgeInsets.all(8.0),
          icon: const ImageIcon(
            AssetImage('assets/Group 3173.png'),
            size: 20.0,
            color: Colors.pinkAccent,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(8.0),
            icon: const ImageIcon(
              AssetImage('assets/Icon-1.png'),
              size: 20.0,
              color: Colors.pinkAccent,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Page2HomeScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey.shade300,
          child: Column(
            children: [
              // Heading
              HeadingContainer(),

              // Custom DatePicker
              ActivityContainer(),

              const SizedBox(
                height: 16.0,
              ),
              //Symptoms
              const SymptomsContainer(),

              const SizedBox(
                height: 16.0,
              ),
              // Explore
              const ExploreContainer(),

              const SizedBox(
                height: 16.0,
              ),
              //AD
              Image.asset('assets/WhatsApp Image -1.png'),

              const SizedBox(
                height: 32.0,
              ),
              //Demo App
              const DemoAppCard(),

              const SizedBox(
                height: 16.0,
              ),
              //Subscription Plan
              const SubscriptionPlanContainer(),

              const SizedBox(
                height: 16.0,
              ),
              //Add People
              const PeopleCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

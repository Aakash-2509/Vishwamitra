import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.home_sharp),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Welcome Screen",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 128.36,
                ),
                Icon(Icons.notifications)
              ],
            ),
          ),
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            tabs: [
              Tab(text: "New Opportunities (25)"),
              Tab(text: "Ongoing Task (12)"),
              Tab(text: "Completed Task(10)"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // Your content for the first tab
                  Text("Content for New Opportunities"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // Your content for the second tab
                  Text("Content for Ongoing Task"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // Your content for the third tab
                  Text("Content for Completed Task"),
                ],
              ),
            ),
            // Add more SingleChildScrollView widgets here for additional tabs
          ],
        ),
      ),
    );
  }
}

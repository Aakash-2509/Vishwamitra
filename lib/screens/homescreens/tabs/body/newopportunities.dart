import 'package:flutter/material.dart';
import 'package:vishwamitra_lang_screen/screens/homescreens/tabs/body/maincard.dart';

class NewOpportunities extends StatefulWidget {
  const NewOpportunities({super.key});

  @override
  State<NewOpportunities> createState() => _NewOpportunitiesState();
}

class _NewOpportunitiesState extends State<NewOpportunities> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MainCard(),
          MainCard(),
        ],
      ),
    );
  }
}

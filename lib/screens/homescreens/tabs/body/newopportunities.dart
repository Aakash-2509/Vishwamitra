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
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(left: 14, top: 16, right: 14),
        child: MainCard(),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_lang_screen/screens/createprofile/welcomescreen.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({super.key});

  @override
  State<Congratulation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  color: Colors.yellow,
                  icon: const Icon(
                    Icons.star,
                  )),
              const Text(
                "Congratulations",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              IconButton(
                  onPressed: () {},
                  color: Colors.yellow,
                  icon: const Icon(
                    Icons.star,
                  )),
              // Icon(sparkles),
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          const Text(
            "Your profile is being shared",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            "with top HRs/Admin",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 161,
          ),
          const Text(
            'Meanwhile, start applying to ',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          const Text(
            'volunteer services',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 25, 40, 44),
        child: CupertinoButton(
          color: Colors.blue,
          child: const Text('Apply Now'),
          onPressed: () {
            Get.offAll(const WelcomeScreen());
          },
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_lang_screen/screens/createprofile/createprofilescreen.dart';

import '../../utils/colors.dart';

class LanguageSelectionPage extends StatefulWidget {
  const LanguageSelectionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  int _selectedLanguageIndex = -1;
  // Color myCustomBlue = const Color(0xFF00406E);
  // Color bgcolor = const Color(0xFF83C4F3);
  // Color mybackgroundBlue = const Color(0xFFE5F2FB);
  // Color continuebuttonBlue = const Color(0xFF1694ef);
  // Color disabledContinueButton = const Color(0x661694EF);
  bool isSelectedButton = false;
  // double abc = 30;

  List<Map<String, String>> languages = [
    {'name': 'Marathi', 'script': 'अ'},
    {'name': 'English', 'script': 'A'},
    {'name': 'Hindi', 'script': 'अ'},
    {'name': 'Kannada', 'script': 'ಕ'},
    {'name': 'Bengali', 'script': 'অ'},
    {'name': 'Telugu', 'script': 'అ'},
    {'name': 'Tamil', 'script': 'அ'},
    {'name': 'Gujarati', 'script': 'અ'},
    {'name': 'Oriya', 'script': 'ଅ'},
    {'name': 'Assamese', 'script': 'অ'},
    {'name': 'Malayalam', 'script': 'അ'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Language",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text("Welcome to Vishwamitra App", style: TextStyle(fontSize: 15)),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: languages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  bool isSelected = _selectedLanguageIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedLanguageIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorConst.whiteColor,
                        border: Border.all(
                          color: isSelected
                              ? ColorConst.bgcolor
                              : ColorConst.greyColor,
                          width: 1,
                        ),
                        boxShadow: isSelected
                            ? [
                                const BoxShadow(
                                    color: ColorConst.boxShadowColor,
                                    spreadRadius: 1,
                                    blurRadius: 5)
                              ]
                            : [],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(languages[index]['script']!,
                              style: TextStyle(
                                  color: isSelected
                                      ? ColorConst.blueColor
                                      : ColorConst.blackCOlor)),
                          Text(languages[index]['name']!,
                              style: TextStyle(
                                  color: isSelected
                                      ? ColorConst.blueColor
                                      : ColorConst.blackCOlor)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: ColorConst.mybackgroundBlue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Please choose a language from above.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConst.myCustomBlue,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'You can change the language from profile settings later.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConst.myCustomBlue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: CupertinoButton(
                  color: isSelectedButton
                      ? ColorConst.disabledContinueButton
                      : ColorConst.continuebuttonBlue,
                  onPressed: _selectedLanguageIndex != -1
                      ? () {
                          Get.to(const CreateProfileScreen());
                        }
                      : null,
                  child: const Text('Continue'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

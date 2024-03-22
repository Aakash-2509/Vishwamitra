import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:vishwamitra_lang_screen/screens/homescreens/tabs/body/avatarstcakscreen.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

class MainCard extends StatefulWidget {
  const MainCard({super.key});

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(14),
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: ColorConst.blackCOlor, width: 1),
        color: ColorConst.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: ColorConst.whiteColor,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/img/bg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: ColorConst.blackCOlor.withOpacity(.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Robinhood acadmaybe (1/3)",
                        style: TextStyle(
                            color: ColorConst.whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        height: 20,
                        width: 35,
                        decoration: BoxDecoration(
                          color: ColorConst.whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.heart_broken,
                              color: ColorConst.redColor,
                              size: 15,
                            ),
                            Text(
                              "12",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.share,
                      color: ColorConst.whiteColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 30,
                  child: IconButton(
                    icon: const Icon(
                      Icons.bookmark_add_outlined,
                      color: ColorConst.whiteColor,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Craft & Social activity'),
              SizedBox(
                height: 50,
                width: 50,
                child: AvatarStackDemo(),
              )
            ],
          ),
          const Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Indore, MP',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.subtitleColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.directions_walk_outlined,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('(3 Km)')
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.access_time_outlined,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Mon & Fri, 9am-12pm',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ColorConst.subtitleColor,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '(Onsite)',
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(
                      Icons.public,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      child: const Text(
                        'www.robinhoodacademy.org',
                        style: TextStyle(
                          color: ColorConst.blueColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        launchUrlString('https://www.robinhoodacademy.org');
                      },
                    ),
                  ],
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  launchUrlString('https://www.robinhoodacademy.org');
                },
                color: ColorConst.blueColor,
                minSize:
                    0, // Set minSize to 0 to allow the button to be smaller
                padding: EdgeInsets
                    .zero, // Remove padding to allow the icon to be fully visible
                child: Container(
                  width: 72,
                  height: 24,
                  alignment: Alignment.center,
                  child: const Text(
                    'Apply Now',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
          const Icon(Icons.more_horiz_outlined),
          Container(
            height: 1,
            width: 290,
            color: ColorConst.greyColor,
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}

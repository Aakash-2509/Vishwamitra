import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:vishwamitra_lang_screen/screens/homescreens/tabs/body/avatarstcakscreen.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

// ignore: must_be_immutable
class MainCard extends StatefulWidget {
  MainCard({super.key});

  @override
  State<MainCard> createState() => _MainCardState();

  List<Map<String, dynamic>> list = [
    {
      'img': 'assets/img/bg.jpeg',
      'title': "Robinhood acadmaybe (1/3)",
      'activity': 'Craft & Social activity',
      'location': 'Indore, MP',
      'distance': '(3 KM)',
      'time': 'Mon & Fri, (9am-12pm)',
      'link': 'www.robinhoodacademy.org',
      'link2': 'https://www.robinhoodacademy.org'
    },
  ];
}

class _MainCardState extends State<MainCard> {
  bool isBookmarked = false;
  final List<bool> _categoryCheckboxes = [
    false,
    false,
  ]; // Track checkbox state for each category

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 11, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Save to ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConst.blackCOlor,
                          fontSize: 18.0,
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          _handleSaveToCategories();
                          Navigator.pop(
                              context); // Close bottom sheet after saving
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(color: ColorConst.blueColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 8.0),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Create new list...',
                    style: TextStyle(
                      color: ColorConst.blueColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Checkbox(
                    value: _categoryCheckboxes[0], // Ensure value is not null
                    onChanged: (newValue) {
                      setState(() {
                        _categoryCheckboxes[0] = newValue!;
                      });
                    },
                  ),
                  title: const Text(
                    'Volunteer by Own',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.lock), // Add lock icon as trailing
                  onTap: () {
                    setState(() {
                      _categoryCheckboxes[0] = !_categoryCheckboxes[0];
                    });
                  },
                ),

                ListTile(
                  leading: Checkbox(
                    value: _categoryCheckboxes[1], // Ensure value is not null
                    onChanged: (newValue) {
                      setState(() {
                        _categoryCheckboxes[1] = newValue!;
                      });
                    },
                  ),
                  title: const Text(
                    'Other',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.lock), // Add lock icon as trailing
                  onTap: () {
                    setState(() {
                      _categoryCheckboxes[0] = !_categoryCheckboxes[0];
                    });
                  },
                ),

                // CheckboxListTile(
                //   title: const Text('Category 3'),
                //   value: _categoryCheckboxes[2],
                //   onChanged: (newValue) {
                //     setState(() {
                //       _categoryCheckboxes[2] = newValue!;
                //     });
                //   },
                // ),
              ],
            );
          },
        );
      },
    );
  }

  void _handleSaveToCategories() {
    // Implement logic to save bookmark to selected categories
    for (int i = 0; i < _categoryCheckboxes.length; i++) {
      if (_categoryCheckboxes[i]) {
        // print('Bookmark saved to Category ${i + 1}');
        // You can add your logic here to save bookmark to the selected categories
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(14),
      height: 300,
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
              image: DecorationImage(
                image: AssetImage(widget.list[0]['img']),
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
                      Text(
                        widget.list[0]['title'], // Title from the list
                        style: const TextStyle(
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
                    onPressed: () {
                      setState(() {
                        isBookmarked = !isBookmarked;
                      });
                      _showBottomSheet();
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.list[0]['activity']), // Activity from the list
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.list[0]
                                ['location'], // Location from the list
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorConst.subtitleColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.directions_walk_outlined,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(widget.list[0]
                              ['distance']) // Distance from the list
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time_outlined,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.list[0]['time'], // Time from the list
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorConst.subtitleColor,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '(Onsite)',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.public,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            child: Text(
                              widget.list[0]['link'], // Link from the list
                              style: const TextStyle(
                                color: ColorConst.blueColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () {
                              launchUrlString(
                                widget.list[0]['link'], // Link from the list
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: Positioned(
                      // right: 10,
                      child: AvatarStackDemo(),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      launchUrlString(
                        widget.list[0]['link2'], // Link from the list
                      );
                    },
                    color: ColorConst.blueColor,
                    minSize: 0,
                    padding: EdgeInsets.zero,
                    child: Container(
                      width: 72,
                      height: 24,
                      alignment: Alignment.center,
                      child: const Text(
                        'Apply Now',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          // const Icon(Icons.more_horiz_outlined),
          // Container(
          //   color: ColorConst.greyColor,
          //   decoration: const BoxDecoration(
          //     // shape: BoxShape.circle,
          //     // borderRadius: BorderRadius.all(Radius.circular(10)),
          //   ),
          // ),
          SizedBox(
            width: 80, // Adjust width according to your design
            height: 24, // Adjust height according to your design
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle, // Make the container circular
            //   border: Border.all(
            //       color: Colors.black), // Add border to create outline
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorConst.blueColor,
                    border: Border.all(color: ColorConst.blueColor),
                  ),
                ),
                // const SizedBox(
                //   width: 8,
                // ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorConst.blackCOlor),
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorConst.blackCOlor),
                  ),
                ),
              ],
            ),
          ),
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

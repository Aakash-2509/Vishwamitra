import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
      height: 302,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        // image: const DecorationImage(
        //   image: AssetImage('assets/images/background.jpg'),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                // image: NetworkImage(
                //     'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
                image: AssetImage('assets/img/bg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.3),
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
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        height: 20,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.heart_broken,
                              color: Colors.red,
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
                      color: Colors.white,
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
                      color: Colors.white,
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
            children: [Text('Craft & Social activity'), Text('activity')],
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
                      color: Color(0xFF848383),
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
                  color: Color(0xFF848383),
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
                          color: Colors.blue,
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
                color: Colors.blue,
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
            color: Colors.grey,
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}

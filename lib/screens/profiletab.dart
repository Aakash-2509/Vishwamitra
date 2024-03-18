import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 6, top: 30),
            child: SizedBox(
              // height: 68,
              // width: 375,
              child: Text(
                'My Profile',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, top: 59, right: 16),
          child: Container(
            width: 343,
            height: 181,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/bg.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // border: Border.fromBorderSide(BorderSide(width: 1.0)),
                  ),
                  height: 181,
                  width: 127,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(20, 26, 28, 76),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/img/profile.jpeg'),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sunil Kumar',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.edit,
                              size: 18,
                            )
                          ],
                        ),

                        Text(
                          'Mathematic teacher',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: 15,
                              ),
                              Text(
                                'sunil.kumar123@gmail.com',
                              ),
                            ],
                          ),
                        ),

                        Text('+123456789'),
                        // Maintain spacing consistency

                        Text('Location'),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

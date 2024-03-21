import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

// ignore: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  List<Map<String, dynamic>> list = [
    {
      "name": "Mohit Sen",
      "message": "Computer Teacher (Tally, DTP, PS)of in Inspiring India.",
      "time": "Started Following you.",
      "profileImage":
          "assets/img/profile.jpeg", // Path of profile image for notification 1
    },
    {
      "name": "We All",
      "message": "Mathematic teacher Hindi (3rd and 4th grade)",
      "time": "...2 Days Left ",
      "profileImage":
          "assets/img/profile2.jpeg", // Path of profile image for notification 2
    },
    {
      "name": "Computer Learning, from",
      "message": "Inspiring India. 3 months crash course.",
      "time": "Started from 12 Feb 2023.",
      "profileImage":
          "assets/img/profile3.jpeg", // Path of profile image for notification 3
    },
    {
      "name": "Mona Jain,",
      "message": "Geography Teacher of in Inspiring India.",
      "time": "Started Following you.",
      "profileImage":
          "assets/img/profile4.jpeg", // Path of profile image for notification 4
    }
  ];

  // ignore: non_constant_identifier_names
  final List<String> notifi_time = ["10m", "18m", '20m', '1h'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final notification = list[index];
          return ListTile(
            leading: SizedBox(
              child: CircleAvatar(
                radius: 25.sp,
                backgroundImage: AssetImage(notification['profileImage']),
              ),
            ),
            title: Row(
              children: [
                SizedBox(
                  width: 219.w  ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notification['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.sp),
                      ),
                      Text(
                        notification['message'],
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        notification['time'],
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      notifi_time[index],
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: ColorConst.blackCOlor,
                      ),
                    ),
                    const Icon(
                      Icons.more_horiz,
                      color: ColorConst.editIconColor,
                    ),
                  ],
                )
              ],
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}

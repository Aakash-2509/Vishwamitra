import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int tappedIndex = -1;

  List<Map<String, dynamic>> list = [
    {
      "name": "Mohit Sen",
      "message": "Computer Teacher (Tally, DTP, PS)of in Inspiring India.",
      "time": "Started Following you.",
      "profileImage": "assets/img/profile.jpeg",
      "read": false, // Add a 'read' property
    },
    {
      "name": "We All",
      "message": "Mathematic teacher Hindi (3rd and 4th grade)",
      "time": "...2 Days Left ",
      "profileImage": "assets/img/profile2.jpeg",
      "read": false,
    },
    {
      "name": "Computer Learning, from",
      "message": "Inspiring India. 3 months crash course.",
      "time": "Started from 12 Feb 2023.",
      "profileImage": "assets/img/profile.jpeg",
      "read": false,
    },
    {
      "name": "Mona Jain,",
      "message": "Geography Teacher of in Inspiring India.",
      "time": "Started Following you.",
      "profileImage": "assets/img/profile.jpeg",
      "read": false,
    }
  ];

  final List<String> notificationTime = ["10m", "18m", '20m', '1h'];

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
          return GestureDetector(
            onTap: () {
              setState(() {
                if (tappedIndex != index) {
                  tappedIndex = index;
                }
                // Mark notification as read when tapped
                notification['read'] = true;
              });
            },
            child: Container(
              color: notification['read'] ? Colors.white : const Color(0xFFCFEBFF),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.sp,
                  backgroundImage: AssetImage(notification['profileImage']),
                ),
                title: Row(
                  children: [
                    SizedBox(
                      width: 219.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notification['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                            ),
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
                          notificationTime[index],
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
              ),
            ),
          );
        },
      ),
    );
  }
}

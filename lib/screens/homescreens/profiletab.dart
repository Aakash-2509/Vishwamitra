import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          title: Padding(
            padding: const EdgeInsets.only(left: 6, top: 30),
            child: SizedBox(
              child: Text(
                'My Profile',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 59, right: 16),
              child: Container(
                width: 343.w,
                height: 181.h,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFAFADAD)),
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
                      ),
                      height: 181.h,
                      width: 127.w,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(20, 26, 28, 76),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/img/profile.jpeg'),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 16, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Sunil Kumar',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Icon(
                                  Icons.edit,
                                  size: 18.sp,
                                  color: const Color(0xFF848383),
                                )
                              ],
                            ),
                            Text(
                              'Mathematic teacher',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF848383)),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            SizedBox(
                              width: 180.w,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    size: 12.sp,
                                    color: const Color(0xFFAFADAD),
                                  ),
                                  Text(
                                    'sunil.kumar123@gmail.com',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFF848383),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 96.w,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    size: 12.sp,
                                    color: const Color(0xFFAFADAD),
                                  ),
                                  Text('9176948068',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xFF848383))),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 182.w,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: const Color(0xFFAFADAD),
                                    size: 12.sp,
                                  ),
                                  Text(
                                    'Pune, Maharashtra',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xFF848383),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 20.w),
                                child: Row(
                                  children: [
                                    const Icon(
                                      size: 15,
                                      Icons.share_sharp,
                                      color: Color(0xFF1694EF),
                                    ),
                                    SizedBox(width: 5.w),
                                    const Text(
                                      'Share profile',
                                      style: TextStyle(
                                        color: Color(0xFF1694EF),
                                        fontSize: 14
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200.h,
              width: 360.w,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: const TabBar(
                      tabs: [
                        Tab(text: 'Journey'),
                        Tab(text: 'About me'),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      Center(child: Text('Journey')),
                      Center(child: Text('About me')),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

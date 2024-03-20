import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryTab extends StatefulWidget {
  const LibraryTab({super.key});

  @override
  State<LibraryTab> createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 18, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Library',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                    width: 94.w,
                    child: CupertinoButton(
                      onPressed: () {},
                      color: Colors.blue,
                      borderRadius: const BorderRadius.all(Radius.circular(34)),
                      padding: EdgeInsets.zero,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.add, size: 16),
                          ),
                          Text(
                            'New List',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 500,
                child: ListView(
                  children: const [
                    LibraryCard(),
                    LibraryCard(),
                    LibraryCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LibraryCard extends StatelessWidget {
  const LibraryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xFFF5F5F5),
        border: Border.all(width: 1, color: const Color(0xFFAFADAD)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: CircleAvatar(
                        child: Image.asset(
                          'assets/img/library_img/profile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text("Sunil")
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Volunteer by Own',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    const Row(
                      children: [
                        Text('7 Opportunities'),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(Icons.lock),
                      ],
                    ),
                    SizedBox(
                      width: 110.w,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.download_for_offline_outlined),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(Icons.more_vert_outlined),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            width: 390,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 108,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                      'assets/img/library_img/profile.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 109,
                  height: 150,
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/img/library_img/profile.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 109,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                      'assets/img/library_img/profile.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

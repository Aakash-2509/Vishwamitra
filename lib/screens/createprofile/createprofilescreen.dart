import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_lang_screen/screens/createprofile/createprofilenextscreen.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  Color detailColor = const Color(0xFFD8D8D8);
  Color cupertinoButtonColor = const Color(0xFF1694EF);
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Set the key of the form
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade400, width: 2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const CircleAvatar(
                    minRadius: BorderSide.strokeAlignOutside,
                    backgroundColor: Colors.transparent,
                    child: Text('1', style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  height: 1.h,
                  child: Container(
                    color: detailColor,
                  ),
                ),
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: detailColor),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Text('2', style: TextStyle(color: detailColor)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'About me',
                  style: TextStyle(
                      color: const Color(0xFF1694EF),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Deatils',
                    style: TextStyle(
                        color: const Color(0xFFD8D8D8),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("About Me",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text('Full Name',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 320.w,
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          hintText: "e.g. Anand Sharma",
                          hintStyle:
                              TextStyle(fontSize: 14.sp, color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  const Text('Email (Optional)'),
                  SizedBox(
                    width: 320.w,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isNotEmpty && !value.isEmail) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: "e.g. anandsharma123@gmail.com",
                        hintStyle:
                            TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.info, size: 10.sp),
                      Expanded(
                        child: Text(
                          "  Receive updates on volunteer service opportunities & application",
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.grey,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 32.h),
                  const Text('Phone Number'),
                  SizedBox(
                    width: 320.w,
                    child: TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          hintText: "e.g. 6276483564",
                          hintStyle:
                              TextStyle(fontSize: 14.sp, color: Colors.grey),
                          counterText: ""),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 25, 40, 44),
        child: CupertinoButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Get.to(const CreateProfileNextScreen());
            }
          },
          color: cupertinoButtonColor,
          child: const Text('Next'),
        ),
      ),
    );
  }
}

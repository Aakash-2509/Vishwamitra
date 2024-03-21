import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_lang_screen/screens/createprofile/lastsubmitscreen.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

class CreateProfileNextScreen extends StatefulWidget {
  const CreateProfileNextScreen({super.key});

  @override
  State<CreateProfileNextScreen> createState() =>
      _CreateProfileScreeNextnState();
}

class _CreateProfileScreeNextnState extends State<CreateProfileNextScreen> {
  // Color detailColor = const Color(0xFFD8D8D8);
  // Color cupertinoButtonColor = const Color(0xFF1694EF);
  bool isChecked = false;
  bool isCheckedPT = false;
  bool isCheckedFV = false;
  bool isCheckedOV = false;
  bool isCheckedDS = false;
  bool isCheckedNS = false;
  bool isCheckedC1 = false;
  bool isCheckedC2 = false;
  bool isCheckedC3 = false;
  bool isListVisible = false;
  List<bool> isSelected = [false, false, false, false, false, false];
  List<String> typeList = [
    'Magarpatta City/Pune Region, MH',
    '456 Maple Ave.',
    '789 Pine Dr.',
    '101 Oak Ln.',
    '202 Birch Blvd.'
  ];
  List<String> selectedAddresses = [];
  List<String> filteredList = [];

  List<String> volunteerTypes = [
    'Teaching Volunteer',
    'Mathematic Teacher',
    'Kids Crafting and Teaching Volunteer',
    'Computer Teacher',
    'Woman Empowerment',
    'Animal Rescue Volunteer'
  ];
  List<String> selectedVolunteerTypes = [];
  List<String> filteredList2 = [];

  String selectionMessage1 = '';
  String selectionMessage2 = '';
  String selectionMessage3 = '';
  String selectionMessage4 = '';
  String selectionMessage5 = '';
  String selectionMessage = '';

  void showSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Your Selections"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                if (isChecked) const Text("Full Time"),
                if (isCheckedPT) const Text("Part Time"),
                if (isCheckedFV) const Text("Field Volunteer"),
                if (isCheckedOV) const Text("Online Volunteer"),
                if (isCheckedDS) const Text("Day Shift (9am - 8pm)"),
                if (isCheckedNS) const Text("Night Shift (10pm - 6am)"),
                if (isCheckedC1) const Text("Koregaon Park/Pune Region, MH"),
                if (isCheckedC2) const Text("Shivaji Nagar/Pune Region, MH"),
                if (isCheckedC3) const Text("Mysore/Mysuru Region, KA"),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Get.off(() => const Congratulation());
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.blueColor, width: 2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: CircleAvatar(
                      minRadius: BorderSide.strokeAlignOutside,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.check,
                        color: ColorConst.continuebuttonBlue,
                        size: 18.sp,
                      )),
                ),
                SizedBox(
                  width: 100.w,
                  height: 1.h,
                  child: Container(
                    color: ColorConst.detailColor,
                  ),
                ),
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: ColorConst.continuebuttonBlue, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Text('2',
                        style: TextStyle(color: ColorConst.continuebuttonBlue)),
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
                      color: ColorConst.continuebuttonBlue,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Deatils',
                    style: TextStyle(
                        color: ColorConst.continuebuttonBlue,
                        fontWeight: FontWeight.w600,
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
                  Text("Preferred work type",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                        'This will help us to find the right volunteer service for you',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.subtitleColor)),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Preferred employment type',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                      padding: const EdgeInsets.only(right: 17.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (selectionMessage1.isNotEmpty)
                            Text(
                              selectionMessage1,
                              style:
                                  const TextStyle(color: ColorConst.redColor),
                            ),
                          if (selectionMessage1.isNotEmpty)
                            SizedBox(height: 16.h),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      width: 1.w,
                                      color: isChecked
                                          ? ColorConst.continuebuttonBlue
                                          : ColorConst.greyColor),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text('Full Time'),
                                    ),
                                    Checkbox(
                                      value: isChecked,
                                      activeColor:
                                          ColorConst.continuebuttonBlue,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      width: 1,
                                      color: isCheckedPT
                                          ? ColorConst.continuebuttonBlue
                                          : ColorConst.greyColor),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text('Part Time'),
                                    ),
                                    Checkbox(
                                      value: isCheckedPT,
                                      activeColor:
                                          ColorConst.continuebuttonBlue,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isCheckedPT = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Preferred volunteer',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectionMessage2.isNotEmpty)
                          Text(
                            selectionMessage2,
                            style: const TextStyle(color: ColorConst.redColor),
                          ),
                        if (selectionMessage2.isNotEmpty)
                          SizedBox(height: 16.h),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedFV
                                    ? ColorConst.continuebuttonBlue
                                    : ColorConst.greyColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text('Field Volunteer '),
                              ),
                              Checkbox(
                                value: isCheckedFV,
                                activeColor: ColorConst.continuebuttonBlue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedFV = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedOV
                                    ? ColorConst.continuebuttonBlue
                                    : ColorConst.greyColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text('Online Volunteer'),
                              ),
                              Checkbox(
                                value: isCheckedOV,
                                activeColor: ColorConst.continuebuttonBlue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedOV = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Preferred Shift',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectionMessage3.isNotEmpty)
                          Text(
                            selectionMessage3,
                            style: const TextStyle(color: ColorConst.redColor),
                          ),
                        if (selectionMessage3.isNotEmpty)
                          SizedBox(height: 16.h),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedDS
                                    ? ColorConst.continuebuttonBlue
                                    : ColorConst.greyColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text('Day Shift (9am - 8pm)'),
                              ),
                              Checkbox(
                                value: isCheckedDS,
                                activeColor: ColorConst.continuebuttonBlue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedDS = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedNS
                                    ? ColorConst.continuebuttonBlue
                                    : ColorConst.greyColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text('Night Shift (10pm - 6am)'),
                              ),
                              Checkbox(
                                value: isCheckedNS,
                                activeColor: ColorConst.continuebuttonBlue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedNS = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Preferred Volunteer City (Select up to 3)',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Text(
                    'Volunteer services are show based on your preferred city',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.subtitleColor,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.h,
                          width: screenWidth * 0.9.w,
                          child: GestureDetector(
                            child: InputDecorator(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                contentPadding: const EdgeInsets.only(left: 1),
                              ),
                              child: SizedBox(
                                child: TextField(
                                  onTap: () {
                                    setState(() {
                                      isListVisible = !isListVisible;
                                      if (!isListVisible) {
                                        filteredList = [];
                                      } else {
                                        filteredList = List.from(typeList);
                                      }
                                    });
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: const SizedBox(
                                      child: Icon(
                                        Icons.search,
                                        color: Color(0xFF9D9D9D),
                                      ),
                                    ),
                                    hintText:
                                        "Search by volunteer title/service",
                                    hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConst.subtitleColor,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      filteredList = typeList
                                          .where((address) => address
                                              .toLowerCase()
                                              .contains(value.toLowerCase()))
                                          .toList();
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 325.w,
                          child: SizedBox(
                            height: isListVisible ? 150.h : 0.h,
                            child: isListVisible
                                ? filteredList.isNotEmpty
                                    ? InputDecorator(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemExtent: 40,
                                          itemCount: filteredList.length,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              title: Text(filteredList[index]),
                                              onTap: () {
                                                setState(() {
                                                  if (selectedAddresses.length <
                                                      3) {
                                                    // Store tapped item from typeList to selectedAddresses
                                                    selectedAddresses.add(
                                                        filteredList[index]);
                                                  }
                                                });
                                              },
                                            );
                                          },
                                        ),
                                      )
                                    : const Center(
                                        child: Text(
                                          "No Results",
                                          style: TextStyle(
                                              color: ColorConst.greyColor),
                                        ),
                                      )
                                : const SizedBox(),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height: selectedAddresses.isNotEmpty ? 180.h : 0.h,
                          child: selectedAddresses.isNotEmpty
                              ? SizedBox(
                                  width: double.infinity,
                                  child: ListView.builder(
                                    itemCount: selectedAddresses.length > 3
                                        ? 3
                                        : selectedAddresses.length,
                                    itemBuilder: (context, index) {
                                      return SingleChildScrollView(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                color: ColorConst.darkBlue,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.1),
                                                    spreadRadius: 2,
                                                    blurRadius: 3,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    selectedAddresses[index],
                                                    style: const TextStyle(
                                                        color: ColorConst
                                                            .whiteColor),
                                                  ),
                                                  IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    color:
                                                        ColorConst.whiteColor,
                                                    iconSize: 15.sp,
                                                    onPressed: () {
                                                      setState(() {
                                                        selectedAddresses
                                                            .removeAt(index);
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Suggested cities',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectionMessage4.isNotEmpty)
                          Text(
                            selectionMessage4,
                            style: const TextStyle(color: ColorConst.redColor),
                          ),
                        if (selectionMessage4.isNotEmpty)
                          SizedBox(height: 16.h),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedC1
                                    ? ColorConst.continuebuttonBlue
                                    : ColorConst.greyColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text('Koregaon Park/Pune Region, MH'),
                              ),
                              Checkbox(
                                value: isCheckedC1,
                                activeColor: ColorConst.continuebuttonBlue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedC1 = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedC2
                                    ? ColorConst.continuebuttonBlue
                                    : ColorConst.greyColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text('Shivaji Nagar/Pune Region, MH'),
                              ),
                              Checkbox(
                                value: isCheckedC2,
                                activeColor: ColorConst.continuebuttonBlue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedC2 = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedC3
                                    ? ColorConst.continuebuttonBlue
                                    : ColorConst.greyColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text('Mysore/Mysuru Region, KA'),
                              ),
                              Checkbox(
                                value: isCheckedC3,
                                activeColor: ColorConst.continuebuttonBlue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedC3 = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'What volunteer type/service are you looking for?',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'You can select up to 5 preferences',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: ColorConst.subtitleColor),
                  ),
                  SizedBox(height: 16.h),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.h,
                          width: screenWidth * 0.9.w,
                          child: GestureDetector(
                            child: InputDecorator(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                contentPadding: const EdgeInsets.only(left: 1),
                              ),
                              child: SizedBox(
                                child: TextField(
                                  onTap: () {
                                    setState(() {
                                      isListVisible = !isListVisible;
                                      if (!isListVisible) {
                                        filteredList2 = [];
                                      } else {
                                        filteredList2 =
                                            List.from(volunteerTypes);
                                      }
                                    });
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: const SizedBox(
                                      child: Icon(
                                        Icons.search,
                                        color: Color(0xFF9D9D9D),
                                      ),
                                    ),
                                    hintText:
                                        "Search by volunteer title/service",
                                    hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConst.subtitleColor2,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      filteredList2 = volunteerTypes
                                          .where((item) => item
                                              .toLowerCase()
                                              .contains(value.toLowerCase()))
                                          .toList();
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 325.w,
                          child: SizedBox(
                            height: isListVisible ? 150.h : 0.h,
                            child: isListVisible
                                ? filteredList2.isNotEmpty
                                    ? InputDecorator(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemExtent: 40,
                                          itemCount: filteredList2.length,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              title: Text(filteredList2[index]),
                                              onTap: () {
                                                setState(() {
                                                  if (selectedVolunteerTypes
                                                          .length <
                                                      3) {
                                                    selectedVolunteerTypes.add(
                                                        filteredList2[index]);
                                                  }
                                                });
                                              },
                                            );
                                          },
                                        ),
                                      )
                                    : const Center(
                                        child: Text(
                                          "No Results",
                                          style: TextStyle(
                                              color: ColorConst.greyColor),
                                        ),
                                      )
                                : const SizedBox(),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height:
                              selectedVolunteerTypes.isNotEmpty ? 180.h : 0.h,
                          child: selectedVolunteerTypes.isNotEmpty
                              ? SizedBox(
                                  width: double.infinity,
                                  child: ListView.builder(
                                    itemCount: selectedVolunteerTypes.length > 3
                                        ? 3
                                        : selectedVolunteerTypes.length,
                                    itemBuilder: (context, index) {
                                      return SingleChildScrollView(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                color: ColorConst.darkBlue,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: ColorConst.blackCOlor
                                                        .withOpacity(0.1),
                                                    spreadRadius: 2,
                                                    blurRadius: 3,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    selectedVolunteerTypes[
                                                        index],
                                                    style: const TextStyle(
                                                        color: ColorConst
                                                            .whiteColor),
                                                  ),
                                                  IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    color:
                                                        ColorConst.whiteColor,
                                                    iconSize: 15.sp,
                                                    onPressed: () {
                                                      setState(() {
                                                        selectedVolunteerTypes
                                                            .removeAt(index);
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Container(
                      decoration:
                          const BoxDecoration(color: ColorConst.borderColor),
                      width: 342.w,
                      height: 372.h,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              'Suggested volunteer types/services',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: ColorConst.subtitleColor),
                            ),
                            if (selectionMessage.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  selectionMessage,
                                  style: TextStyle(
                                    color: ColorConst.redColor,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            SizedBox(
                              height: 24.h,
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              itemCount: volunteerTypes.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return SizedBox(height: 8.h);
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSelected[index] = !isSelected[index];
                                      });
                                    },
                                    child: FittedBox(
                                      child: Container(
                                        height: 36.h,
                                        decoration: BoxDecoration(
                                          color: isSelected[index]
                                              ? ColorConst.blueColor
                                              : ColorConst.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          border: Border.all(
                                            color: isSelected[index]
                                                ? ColorConst.transparent
                                                : ColorConst.subtitleColor2,
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Center(
                                          child: Text(
                                            volunteerTypes[index],
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: isSelected[index]
                                                  ? ColorConst.whiteColor
                                                  : ColorConst.subtitleColor2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 25, 40, 44),
        child: CupertinoButton(
          onPressed: () {
            setState(() {
              selectionMessage1 = '';
              selectionMessage2 = '';
              selectionMessage3 = '';
              selectionMessage4 = '';
              selectionMessage5 = '';
            });

            if (!isChecked && !isCheckedPT) {
              setState(() {
                selectionMessage1 = 'Select at least 1 option.';
              });
            } else if (!isCheckedFV && !isCheckedOV) {
              setState(() {
                selectionMessage2 = 'Select at least 1 option';
              });
            } else if (!isCheckedDS && !isCheckedNS) {
              selectionMessage3 = 'Select at least 1 option';
            } else if (!isCheckedC1 && !isCheckedC2 && !isCheckedC3) {
              selectionMessage4 = 'Select at least 1 option';
            }
            int selectedCount = isSelected.where((item) => item).length;
            if (selectedCount == 0) {
              setState(() {
                selectionMessage = 'Select at least 1 option.';
              });
            }
            if (selectionMessage1.isEmpty &&
                selectionMessage2.isEmpty &&
                selectionMessage3.isEmpty &&
                selectionMessage4.isEmpty) {
              showSelectionDialog(context);
            }
          },
          color: ColorConst.continuebuttonBlue,
          child: const Text('Next'),
        ),
      ),
    );
  }
}

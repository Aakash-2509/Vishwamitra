import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_lang_screen/screens/createprofile/lastsubmitscreen.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

// ignore: camel_case_types
class CreateProfileNextScreen extends StatefulWidget {
  final String userName;
  final String phoneNumber;

  const CreateProfileNextScreen(
      {super.key, required this.userName, required this.phoneNumber});

  @override
  State<CreateProfileNextScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CreateProfileNextScreen> {
  bool isSelectedbool1 = false;
  bool isSelectedbool2 = false;
  bool isSelectedbool3 = false;
  bool isSelectedbool4 = false;
  bool isSelectedbool5 = false;
  bool isSelectedbool6 = false;
  bool isSelectedbool7 = false;
  bool isSelectedbool8 = false;
  bool isSelectedbool9 = false;
  List<bool> isSelectedbool = [false, false, false, false, false, false];

  String selectionMessage = '';
  String selectionMessage1 = '';
  String selectionMessage2 = '';
  String selectionMessage3 = '';
  String selectionMessage4 = '';
  String selectionMessage5 = '';
  // bool isSelected = false;

  List<String> volunteerTypes = [
    'Teaching Volunteer',
    'Mathematic Teacher',
    'Kids Crafting and Teaching Volunteer',
    'Computer Teacher',
    'Woman Empowerment',
    'Animal Rescue Volunteer'
  ];

  List<String> typeList = [
    '123 Elm St.',
    '456 Maple Ave.',
    '789 Pine Dr.',
    '101 Oak Ln.',
    '202 Birch Blvd.'
  ];

  bool textFieldTapped = false;
  String? selectedAddress;

  List<String> selectedAddresses = [];

  List<String> selectedvolunterType = [];

  String filterAdress = "";
  String filtervolunterType = "";

  FocusNode focusNode = FocusNode();
  bool isListVisible = false;
  FocusNode searchFocusNode = FocusNode();
  FocusNode focusvolunterType = FocusNode();
  bool isListVisibleVolunterType = false;

  @override
  void initState() {
    super.initState();

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          isListVisible = true;
        });
      } else {
        setState(() {
          isListVisible = false;
        });
      }
    });
    focusvolunterType.addListener(() {
      if (!textFieldTapped) {
        if (focusvolunterType.hasFocus) {
          setState(() {
            isListVisibleVolunterType = true;
          });
        } else {
          setState(() {
            isListVisibleVolunterType = false;
          });
        }
      }
    });
  }

  void showSelectionDialog(
      BuildContext context, String userName, String phoneNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Your selections"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Name: $userName"),
                Text("Phone: $phoneNumber"),
                const Text("Preferred work Type",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                if (isSelectedbool1) const Text("Full Time"),
                if (isSelectedbool2) const Text("Part Time"),
                const Text('Preferred volunteer',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                if (isSelectedbool3) const Text("Field Volunteer"),
                if (isSelectedbool4) const Text("Online Volunteer"),
                const Text('Preferred Shift',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                if (isSelectedbool5) const Text("Day Shift (9am - 8pm)"),
                if (isSelectedbool6) const Text("Night Shift (10pm - 6am)"),
                const Text('Suggested cities',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                if (isSelectedbool7)
                  const Text("Koregaon Park/Pune Region, MH"),
                if (isSelectedbool8)
                  const Text("Shivaji Nagar/Pune Region, MH"),
                if (isSelectedbool9) const Text("Mysore/Mysuru Region, KA"),
                const Text('Volunteer Types:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                for (int i = 0; i < isSelectedbool.length; i++)
                  if (isSelectedbool[i]) Text(volunteerTypes[i]),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Get.to(() => const Congratulation());
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    focusvolunterType.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> filteredList = typeList
        .where((address) =>
            address.toLowerCase().contains(filterAdress.toLowerCase()))
        .toList();
    List<String> filteredvolunterTpe = volunteerTypes
        .where((type) =>
            type.toLowerCase().contains(filtervolunterType.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: ColorConst.blueColor, width: 2),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: ColorConst.transparent,
                          child: Icon(
                            Icons.check,
                            color: ColorConst.blueColor,
                            size: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 1,
                        child: Container(
                          color: ColorConst.detailColor,
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: ColorConst.blueColor, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: ColorConst.transparent,
                          child: Text('2',
                              style: TextStyle(color: ColorConst.blueColor)),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'About me',
                        style: TextStyle(
                            color: ColorConst.continuebuttonBlue,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Deatils',
                          style: TextStyle(
                              color: ColorConst.continuebuttonBlue,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 40, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Prefered work Type",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const Text(
                        "This will help us to find the right volunteer service for you",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF848383),
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text('Preferred employment type ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    if (selectionMessage1.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(selectionMessage1,
                            style: const TextStyle(color: ColorConst.redColor)),
                      ),
                    const SizedBox(
                      height: 4,
                    ),
                    _buildCheckboxOption("Full Time", isSelectedbool1,
                        (newValue) {
                      setState(() => isSelectedbool1 = newValue!);
                    }),
                    const SizedBox(
                      height: 8,
                    ),
                    _buildCheckboxOption("Part Time", isSelectedbool2,
                        (newValue) {
                      setState(() => isSelectedbool2 = newValue!);
                    }),
                    const SizedBox(height: 16),
                    const Text('Preferred volunteer',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    if (selectionMessage2.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(selectionMessage2,
                            style: const TextStyle(color: ColorConst.redColor)),
                      ),
                    const SizedBox(
                      height: 4,
                    ),
                    _buildCheckboxOption("Field Volunteer ", isSelectedbool3,
                        (newValue) {
                      setState(() => isSelectedbool3 = newValue!);
                    }),
                    const SizedBox(
                      height: 8,
                    ),
                    _buildCheckboxOption("Online Volunteer", isSelectedbool4,
                        (newValue) {
                      setState(() => isSelectedbool4 = newValue!);
                    }),
                    const SizedBox(height: 16),
                    const Text('Preferred Shift',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    if (selectionMessage3.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(selectionMessage3,
                            style: const TextStyle(color: ColorConst.redColor)),
                      ),
                    const SizedBox(
                      height: 4,
                    ),
                    _buildCheckboxOption(
                        "Day Shift (9am - 8pm)", isSelectedbool5, (newValue) {
                      setState(() => isSelectedbool5 = newValue!);
                    }),
                    const SizedBox(
                      height: 8,
                    ),
                    _buildCheckboxOption(
                        "Night Shift (10pm - 6am)", isSelectedbool6,
                        (newValue) {
                      setState(() => isSelectedbool6 = newValue!);
                    }),
                    const SizedBox(height: 16),
                    const Text('Preferred Volunteer City (Select upto 3)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Text(
                        "Volunteer services are show base4d on your preferred city",
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorConst.subtitleColor,
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(height: 16),
                    TextField(
                      focusNode: focusNode,
                      onChanged: (value) {
                        setState(() {
                          filterAdress = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: ColorConst.subtitleColor2,
                        ),
                        hintText: "Search by volunteer title/service",
                        hintStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.subtitleColor2),
                      ),
                    ),
                    if (isListVisible) ...[
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConst.greyColor, width: 2.0),
                        ),
                        child: ListView.builder(
                          itemCount: filteredList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (!selectedAddresses
                                        .contains(filteredList[index]) &&
                                    selectedAddresses.length < 3) {
                                  setState(() {
                                    selectedAddresses.add(filteredList[index]);
                                  });
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                height: 30,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  filteredList[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                    selectedAddresses.isNotEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: selectedAddresses.map((address) {
                              return IntrinsicWidth(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  margin: const EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    color: ColorConst.blueColor,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        address,
                                        style: const TextStyle(
                                            color: ColorConst.whiteColor),
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.close,
                                          color: ColorConst.whiteColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            selectedAddresses.remove(address);
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          )
                        : Container(),
                    const SizedBox(height: 16),
                    const Text('Suggested cities',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    if (selectionMessage4.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(selectionMessage4,
                            style: const TextStyle(color: ColorConst.redColor)),
                      ),
                    const SizedBox(
                      height: 4,
                    ),
                    _buildCheckboxOption(
                        "Koregaon Park/Pune Region, MH", isSelectedbool7,
                        (newValue) {
                      setState(() => isSelectedbool7 = newValue!);
                    }),
                    const SizedBox(
                      height: 8,
                    ),
                    _buildCheckboxOption(
                        "Shivaji Nagar/Pune Region, MH", isSelectedbool8,
                        (newValue) {
                      setState(() => isSelectedbool8 = newValue!);
                    }),
                    const SizedBox(
                      height: 8,
                    ),
                    _buildCheckboxOption(
                        "Mysore/Mysuru Region, KA", isSelectedbool9,
                        (newValue) {
                      setState(() => isSelectedbool9 = newValue!);
                    }),
                    const SizedBox(height: 16),
                    const Text(
                        'Wht volunteer type/service are you looking for?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Text("You can select up to 5 preferences",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF848383),
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(height: 16),
                    TextField(
                      focusNode: focusvolunterType,
                      onChanged: (value) {
                        setState(() {
                          filtervolunterType = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: ColorConst.subtitleColor,
                        ),
                        hintText: "Search by volunteer title/service",
                        hintStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.subtitleColor),
                      ),
                    ),
                    if (isListVisibleVolunterType) ...[
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConst.greyColor, width: 2.0),
                        ),
                        child: ListView.builder(
                          itemCount: filteredvolunterTpe.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (!selectedvolunterType
                                        .contains(filteredvolunterTpe[index]) &&
                                    selectedvolunterType.length < 5) {
                                  setState(() {
                                    selectedvolunterType
                                        .add(filteredvolunterTpe[index]);
                                  });
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                height: 30,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  volunteerTypes[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                    selectedvolunterType.isNotEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: selectedvolunterType.map((type) {
                              return IntrinsicWidth(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  margin: const EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF005FA4),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        type,
                                        style: const TextStyle(
                                            color: ColorConst.whiteColor),
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.close,
                                          color: ColorConst.whiteColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            selectedvolunterType.remove(type);
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          )
                        : Container(),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration:
                          const BoxDecoration(color: ColorConst.borderColor),
                      width: 342,
                      height: 372,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'Suggested volunteer types/services',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: ColorConst.subtitleColor),
                            ),
                            if (selectionMessage.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  selectionMessage,
                                  style: const TextStyle(
                                    color: ColorConst.redColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            const SizedBox(
                              height: 16,
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              itemCount: volunteerTypes.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(height: 8);
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                    onTap: () {
                                      int selectedCount = isSelectedbool
                                          .where((item) => item)
                                          .length;
                                      if (isSelectedbool[index] ||
                                          selectedCount < 5) {
                                        setState(() {
                                          isSelectedbool[index] =
                                              !isSelectedbool[index];
                                          selectionMessage = '';
                                        });
                                      } else {
                                        setState(() {
                                          selectionMessage =
                                              'You can choose only 5 things.';
                                        });
                                      }
                                    },
                                    child: FittedBox(
                                      child: Container(
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: isSelectedbool[index]
                                              ? ColorConst.blueColor
                                              : ColorConst.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          border: Border.all(
                                            color: isSelectedbool[index]
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
                                              fontSize: 12,
                                              color: isSelectedbool[index]
                                                  ? ColorConst.whiteColor
                                                  : ColorConst.textColor,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 25, 40, 44),
        child: CupertinoButton(
          color: ColorConst.blueColor,
          child: const Text('Next'),
          onPressed: () {
            setState(() {
              selectionMessage1 = '';
              selectionMessage2 = '';
              selectionMessage3 = '';
              selectionMessage4 = '';
              selectionMessage = '';
            });
            if (!isSelectedbool1 && !isSelectedbool2) {
              setState(() {
                selectionMessage1 = 'Select at least One option.';
              });
            }
            if (!isSelectedbool3 && !isSelectedbool4) {
              setState(() {
                selectionMessage2 = 'Select at least One option.';
              });
            }
            if (!isSelectedbool5 && !isSelectedbool6) {
              setState(() {
                selectionMessage3 = 'Select at least One option.';
              });
            }
            if (!isSelectedbool7 && !isSelectedbool8 && !isSelectedbool9) {
              setState(() {
                selectionMessage4 = 'Select at least One option.';
              });
            }
            int selectedCount = isSelectedbool.where((item) => item).length;
            if (selectedCount == 0) {
              setState(() {
                selectionMessage = 'Select at least One thing.';
              });
            } else if (selectionMessage1.isEmpty &&
                selectionMessage2.isEmpty &&
                selectionMessage3.isEmpty &&
                selectionMessage4.isEmpty) {
              showSelectionDialog(context, widget.userName, widget.phoneNumber);
            }
          },
        ),
      ),
    );
  }

  Widget _buildCheckboxOption(
      String title, bool isSelected, ValueChanged<bool?> onChanged) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        border: Border.all(
            color: isSelected ? ColorConst.blueColor : ColorConst.greyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(title),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Checkbox(
              value: isSelected,
              onChanged: onChanged,
              activeColor: ColorConst.blueColor,
              checkColor: ColorConst.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}

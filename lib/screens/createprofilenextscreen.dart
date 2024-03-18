import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_lang_screen/screens/lastsubmitscreen.dart';

class CreateProfileNextScreen extends StatefulWidget {
  const CreateProfileNextScreen({super.key});

  @override
  State<CreateProfileNextScreen> createState() =>
      _CreateProfileScreeNextnState();
}

class _CreateProfileScreeNextnState extends State<CreateProfileNextScreen> {
  // final _formKey = GlobalKey<FormState>();
  Color detailColor = const Color(0xFFD8D8D8);
  Color cupertinoButtonColor = const Color(0xFF1694EF);
  // final TextEditingController _textFieldController = TextEditingController();
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
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade400, width: 2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const CircleAvatar(
                      minRadius: BorderSide.strokeAlignOutside,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.check,
                        color: Color(0xFF1694EF),
                        size: 18,
                      )),
                ),
                SizedBox(
                  width: 100,
                  height: 1,
                  child: Container(
                    color: detailColor,
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: cupertinoButtonColor, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Text('2',
                        style: TextStyle(color: cupertinoButtonColor)),
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
                      color: Color(0xFF1694EF),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'Deatils',
                    style: TextStyle(
                        color: Color(0xFF1694EF),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Preferred work type",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(
                    height: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                        'This will help us to find the right volunteer service for you',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF848383))),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Preferred employment type',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                      padding: const EdgeInsets.only(right: 17.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (selectionMessage1.isNotEmpty)
                            Text(
                              selectionMessage1,
                              style: const TextStyle(color: Colors.red),
                            ),
                          if (selectionMessage1.isNotEmpty)
                            const SizedBox(height: 16),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      width: 1,
                                      color: isChecked
                                          ? const Color(0xFF1694EF)
                                          : Colors.grey),
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
                                      activeColor: const Color(0xFF1694EF),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      width: 1,
                                      color: isCheckedPT
                                          ? const Color(0xFF1694EF)
                                          : Colors.grey),
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
                                      activeColor: const Color(0xFF1694EF),
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
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Preferred volunteer',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectionMessage2.isNotEmpty)
                          Text(
                            selectionMessage2,
                            style: const TextStyle(color: Colors.red),
                          ),
                        if (selectionMessage2.isNotEmpty)
                          const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedFV
                                    ? const Color(0xFF1694EF)
                                    : Colors.grey),
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
                                activeColor: const Color(0xFF1694EF),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedFV = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedOV
                                    ? const Color(0xFF1694EF)
                                    : Colors.grey),
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
                                activeColor: const Color(0xFF1694EF),
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
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Preferred Shift',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectionMessage3.isNotEmpty)
                          Text(
                            selectionMessage3,
                            style: const TextStyle(color: Colors.red),
                          ),
                        if (selectionMessage3.isNotEmpty)
                          const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedDS
                                    ? const Color(0xFF1694EF)
                                    : Colors.grey),
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
                                activeColor: const Color(0xFF1694EF),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedDS = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedNS
                                    ? const Color(0xFF1694EF)
                                    : Colors.grey),
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
                                activeColor: const Color(0xFF1694EF),
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
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Preferred Volunteer City (Select up to 3)',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  const Text(
                    'Volunteer services are show based on your preferred city',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF848383),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                          width: screenWidth * 0.9,
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
                                  decoration: const InputDecoration(
                                    prefixIcon: SizedBox(
                                      child: Icon(
                                        Icons.search,
                                        color: Color(0xFF9D9D9D),
                                      ),
                                    ),
                                    hintText:
                                        "Search by volunteer title/service",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFAFADAD),
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
                          width: 325,
                          child: SizedBox(
                            height: isListVisible ? 150 : 0,
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
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      )
                                : const SizedBox(),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: selectedAddresses.isNotEmpty ? 180 : 0,
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
                                                color: const Color(0xFF005FA4),
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
                                                        color: Colors.white),
                                                  ),
                                                  IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    color: Colors.white,
                                                    iconSize: 15,
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
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Suggested cities',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectionMessage4.isNotEmpty)
                          Text(
                            selectionMessage4,
                            style: const TextStyle(color: Colors.red),
                          ),
                        if (selectionMessage4.isNotEmpty)
                          const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedC1
                                    ? const Color(0xFF1694EF)
                                    : Colors.grey),
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
                                activeColor: const Color(0xFF1694EF),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedC1 = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedC2
                                    ? const Color(0xFF1694EF)
                                    : Colors.grey),
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
                                activeColor: const Color(0xFF1694EF),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isCheckedC2 = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 1,
                                color: isCheckedC3
                                    ? const Color(0xFF1694EF)
                                    : Colors.grey),
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
                                activeColor: const Color(0xFF1694EF),
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
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'What volunteer type/service are you looking for?',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'You can select up to 5 preferences',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF848383)),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                          width: screenWidth * 0.9,
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
                                  decoration: const InputDecoration(
                                    prefixIcon: SizedBox(
                                      child: Icon(
                                        Icons.search,
                                        color: Color(0xFF9D9D9D),
                                      ),
                                    ),
                                    hintText:
                                        "Search by volunteer title/service",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFAFADAD),
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
                          width: 325,
                          child: SizedBox(
                            height: isListVisible ? 150 : 0,
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
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      )
                                : const SizedBox(),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: selectedVolunteerTypes.isNotEmpty ? 180 : 0,
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
                                                color: const Color(0xFF005FA4),
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
                                                    selectedVolunteerTypes[
                                                        index],
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    color: Colors.white,
                                                    iconSize: 15,
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
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xFFF4FAFE)),
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
                                  color: Color(0xFF848383)),
                            ),
                            if (selectionMessage.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  selectionMessage,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            const SizedBox(
                              height: 24,
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
                                      setState(() {
                                        isSelected[index] = !isSelected[index];
                                      });
                                    },
                                    child: FittedBox(
                                      child: Container(
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: isSelected[index]
                                              ? Colors.blue
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          border: Border.all(
                                            color: isSelected[index]
                                                ? Colors.transparent
                                                : const Color(0xFFAFADAD),
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Center(
                                          child: Text(
                                            volunteerTypes[index],
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: isSelected[index]
                                                  ? Colors.white
                                                  : const Color(0xFF3D3C3C),
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
                  const SizedBox(
                    height: 100,
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
            } else {
              Get.to(() => const Congratulation());
            }
          },
          color: cupertinoButtonColor,
          child: const Text('Next'),
        ),
      ),
    );
  }
}

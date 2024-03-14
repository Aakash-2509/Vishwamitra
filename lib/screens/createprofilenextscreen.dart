import 'package:flutter/material.dart';

class CreateProfileNextScreen extends StatefulWidget {
  const CreateProfileNextScreen({super.key});

  @override
  State<CreateProfileNextScreen> createState() =>
      _CreateProfileScreeNextnState();
}

class _CreateProfileScreeNextnState extends State<CreateProfileNextScreen> {
  Color detailColor = const Color(0xFFD8D8D8);
  Color cupertinoButtonColor = const Color(0xFF1694EF);
  bool isChecked = false;
  bool isCheckedPT = false;
  bool isCheckedFV = false;
  bool isCheckedOV = false;
  bool isCheckedDS = false;
  bool isCheckedNS = false;
  bool isCheckedC1 = false;
  bool isCheckedC2 = false;
  bool isCheckedC3 = false;
  List<bool> isSelected = [false, false, false, false, false, false];

  void _toggleSelection(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    isChecked = value!;
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    isCheckedPT = value!;
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
                    'Preferred volunteer',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Column(
                      children: [
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
                      children: [
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
                  SizedBox(
                    height: 42,
                    width: screenWidth * 0.9,
                    child: GestureDetector(
                      // onTap: () {
                      //   // _showDropdown(context);
                      // },
                      child: const TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(
                            height: 16,
                            width: 2,
                            child: Icon(
                              Icons.search,
                              // size: 16,
                              color: Color(0xFF9D9D9D),
                            ),
                          ),
                          hintText: 'Search by volunteer title/service',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 34,
                    width: 230,
                    decoration: BoxDecoration(
                        color: const Color(0xFF005FA4),
                        borderRadius: BorderRadius.circular(17)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: SizedBox(
                            height: 16,
                            width: 190,
                            child: Text(
                              'Magarpatta City/Pune Region, MH',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFF5F5F5)),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Icon(
                            Icons.close,
                            color: Color(0xFFF5F5F5),
                          ),
                        )
                      ],
                    ),
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
                      children: [
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
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
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
                  SizedBox(
                    height: 42,
                    width: screenWidth * 0.9,
                    child: GestureDetector(
                      // onTap: () {
                      //   // _showDropdown(context);
                      // },
                      child: const TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(
                            height: 16,
                            width: 2,
                            child: Icon(
                              Icons.search,
                              color: Color(0xFF9D9D9D),
                            ),
                          ),
                          hintText: 'Search by volunteer title/service',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
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
                            const SizedBox(
                              height: 24,
                            ),
                            Container(
                              width: 123,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(
                                  color: const Color(0xFFAFADAD),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Teaching Volunteer',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF3D3C3C),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: 123,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(
                                  color: const Color(0xFFAFADAD),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Mathematic Teacher',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF3D3C3C),
                                  ),
                                ),
                              ),
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
    );
  }
}

// void _showDropdown(BuildContext context) {
//   // Create and show the dropdown menu below the TextField
//   var screenWidth = MediaQuery.of(context).size.width;
//   showMenu(
//     context: context,
//     position: RelativeRect.fromLTRB(0, 42, screenWidth * 0.9, 0),
//     items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
//         .map((String value) {
//       return PopupMenuItem<String>(
//         value: value,
//         child: Text(value),
//       );
//     }).toList(),
//   );
// }

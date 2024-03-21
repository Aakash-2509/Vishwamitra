import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchExploreTab extends StatefulWidget {
  const SearchExploreTab({super.key});

  @override
  State<SearchExploreTab> createState() => _SearchExploreTabState();
}

class _SearchExploreTabState extends State<SearchExploreTab> {
  Color fillColorSE = const Color(0xFFF9F9F9);
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  final List<Map<String, dynamic>> _allItems = [
    {
      'srNo': 01,
      'heading': 'Green Life Foundation: Photography Volunteer!',
      'companyName': 'Green Life Foundation',
      'city': 'Pune Maharashtra',
      'time': '5 Hours ago',
      'readTime': '16 min',
      'companyImage': 'assets/img/search_imgs/list1img.png',
    },
    {
      'srNo': 02,
      'heading': 'Pushup Foundation:Teaching Volunteer!',
      'companyName': 'Pushup Foundation',
      'city': 'CSR Arm of P...',
      'time': '18 hours ago',
      'readTime': '11 min ago',
      'companyImage': 'assets/img/search_imgs/list2img.png',
    },
    {
      'srNo': 03,
      'heading': 'Pushup Foundation:Teaching Volunteer!',
      'companyName': 'Pushup Foundation',
      'city': 'CSR Arm of P...',
      'time': '18 hours ago',
      'readTime': '11 min ago',
      'companyImage': 'assets/img/search_imgs/list2img.png',
    },
    {
      'srNo': 04,
      'heading': 'Pushup Foundation:Teaching Volunteer!',
      'companyName': 'Pushup Foundation',
      'city': 'CSR Arm of P...',
      'time': '18 hours ago',
      'readTime': '11 min ago',
      'companyImage': 'assets/img/search_imgs/list2img.png',
    },
    {
      'srNo': 05,
      'heading': 'Pushup Foundation:Teaching Volunteer!',
      'companyName': 'Pushup Foundation',
      'city': 'CSR Arm of P...',
      'time': '18 hours ago',
      'readTime': '11 min ago',
      'companyImage': 'assets/img/search_imgs/list2img.png',
    },
    {
      'srNo': 06,
      'heading': 'Pushup Foundation:Teaching Volunteer!',
      'companyName': 'Pushup Foundation',
      'city': 'CSR Arm of P...',
      'time': '18 hours ago',
      'readTime': '11 min ago',
      'companyImage': 'assets/img/search_imgs/list2img.png',
    },
    // {
    //   'srNo': 7,
    //   'heading': 'Pushup Foundation:Teaching Volunteer!',
    //   'companyName': 'Pushup Foundation',
    //   'city': 'CSR Arm of P...',
    //   'time': '18 hours ago',
    //   'readTime': '11 min ago',
    //   'companyImage': 'assets/img/search_imgs/list2img.png',
    // },
    // {
    //   'srNo': 8,
    //   'heading': 'Pushup Foundation:Teaching Volunteer!',
    //   'companyName': 'Pushup Foundation',
    //   'city': 'CSR Arm of P...',
    //   'time': '18 hours ago',
    //   'readTime': '11 min ago',
    //   'companyImage': 'assets/img/search_imgs/list2img.png',
    // },
    // {
    //   'srNo': 9,
    //   'heading': 'Pushup Foundation:Teaching Volunteer!',
    //   'companyName': 'Pushup Foundation',
    //   'city': 'CSR Arm of P...',
    //   'time': '18 hours ago',
    //   'readTime': '11 min ago',
    //   'companyImage': 'assets/img/search_imgs/list2img.png',
    // },
    // {
    //   'srNo': 10,
    //   'heading': 'Pushup Foundation:Teaching Volunteer!',
    //   'companyName': 'Pushup Foundation',
    //   'city': 'CSR Arm of P...',
    //   'time': '18 hours ago',
    //   'readTime': '11 min ago',
    //   'companyImage': 'assets/img/search_imgs/list2img.png',
    // }
  ];

  List<Map<String, dynamic>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterItems(_searchController.text);
    });
    _locationController.addListener(() {
      setState(() {});
    });
    _filteredItems = List.from(_allItems);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  void _filterItems(String query) {
    if (query.isEmpty) {
      _filteredItems = List.from(_allItems);
    } else {
      _filteredItems = _allItems.where((item) {
        final titleLower = item['heading'].toLowerCase();
        final searchLower = query.toLowerCase();
        return titleLower.contains(searchLower);
      }).toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 375.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 35.h,
                    child: TextField(
                      onTap: () {},
                      controller: _searchController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF9F9F9),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 0.0),
                        hintText: 'Search Opportunities',
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 20,
                        ),
                        suffixIcon: SizedBox(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _searchController.clear();
                                  });
                                },
                                icon: Icon(Icons.close, size: 20.sp),
                              ),
                              Container(
                                height: 20,
                                width: 1,
                                color: Colors.grey,
                              ),
                              IconButton(
                                onPressed: () {},
                                iconSize: 20.sp,
                                color: const Color(0xFF1694EF),
                                icon: const Icon(
                                  Icons.mic,
                                ),
                              ),
                            ],
                          ),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 35.h,
                    child: TextField(
                      onTap: () {
                        setState(() {
                          _locationController.clear();
                        });
                      },
                      controller: _locationController,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF9F9F9),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 0.0),
                        hintText: 'Location',
                        prefixIcon: const Icon(
                          Icons.location_on_outlined,
                          size: 20,
                        ),
                        suffixIcon: _locationController.text.isNotEmpty
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    _locationController.clear();
                                  });
                                },
                                icon: Icon(Icons.close, size: 20.sp),
                              )
                            : null,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                        2), // Add padding inside the container if needed
                    decoration: BoxDecoration(
                      // This is where you define the border
                      border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1, // Set border width
                      ),
                      borderRadius: BorderRadius.circular(
                          5), // Optional: if you want the border to be rounded
                    ),
                    child: const Icon(
                      Icons.trending_up,
                      size: 8,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "TRENDING ON VISHWAMITRA",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  final item = _filteredItems[index];
                  return Container(
                    // margin: EdgeInsets.all(8.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.w),
                          child: Text(
                            '${item['srNo']}',
                            style: TextStyle(
                              color: const Color(0xFFE8E8E8),
                              fontWeight: FontWeight.w400,
                              fontSize: 40.sp,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    item['companyImage'],
                                    width: 16.w,
                                    height: 16.h,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Icon(Icons.error, size: 16.w),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item['companyName'],
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(width: 5.w),
                                        const Text(
                                          "in",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        SizedBox(width: 5.w),
                                        Flexible(
                                          child: Text(
                                            item['city'],
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                item['heading'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    ' ${item['time']}',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  const Text(
                                    " . ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    '${item['readTime']}',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  const Text(
                                    " read",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

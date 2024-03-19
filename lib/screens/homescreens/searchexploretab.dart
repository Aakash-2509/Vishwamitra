import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchExploreTab extends StatefulWidget {
  const SearchExploreTab({Key? key}) : super(key: key);

  @override
  State<SearchExploreTab> createState() => _SearchExploreTabState();
}

class _SearchExploreTabState extends State<SearchExploreTab> {
  Color fillColorSE = const Color(0xFFF9F9F9);
  final TextEditingController _searchController = TextEditingController();
  List<String> trendingItems = [
    'Trending Item 1',
    'Trending Item 2',
    'Trending Item 3',
    'Trending Item 4',
    'Trending Item 5',
    // Add more trending items as needed
  ];
  List<String> searchItems = [
    'Search Item 1',
    'Search Item 2',
    'Search Item 3',
    'Search Item 4',
    'Search Item 5',
    // Add more search items as needed
  ];
  List<String> filteredItems = [];
  List<String> recentSearches = [
    'Recent Search 1',
    'Recent Search 2',
    'Recent Search 3',
    // Add more recent searches as needed
  ];

  @override
  void initState() {
    filteredItems.addAll(recentSearches);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>.empty(growable: true);
    dummySearchList.addAll(searchItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>.empty(growable: true);
      for (var item in dummySearchList) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      }
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(recentSearches);
      });
    }
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
                      onTap: () {
                        setState(() {
                          filteredItems.clear();
                          filteredItems.addAll(recentSearches);
                        });
                      },
                      controller: _searchController,
                      onChanged: (value) {
                        filterSearchResults(value);
                      },
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
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 20,
                              width: 1,
                              color: Colors.grey,
                            ),
                            IconButton(
                              onPressed: () {},
                              iconSize: 20.sp,
                              icon: const Icon(
                                Icons.mic,
                              ),
                            ),
                          ],
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
                      onChanged: (value) {
                        filterSearchResults(value);
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F9F9),
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                        hintText: 'Location',
                        prefixIcon: Icon(
                          Icons.location_on_outlined,
                          size: 20,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
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

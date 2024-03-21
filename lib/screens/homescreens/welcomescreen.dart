import 'package:flutter/material.dart';
import 'package:vishwamitra_lang_screen/screens/homescreens/tabs/hometab.dart';
import 'package:vishwamitra_lang_screen/screens/homescreens/tabs/librarytab.dart';
import 'package:vishwamitra_lang_screen/screens/homescreens/tabs/profiletab.dart';
import 'package:vishwamitra_lang_screen/screens/homescreens/tabs/searchexploretab.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _widgetOptions = [
    const HomeTab(),
    const SearchExploreTab(),
    const LibraryTab(),
    const ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: ColorConst.blueColor,
          unselectedItemColor: ColorConst.blackCOlor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

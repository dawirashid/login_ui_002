import 'package:flutter/material.dart';
import 'package:login_ui_002/dashboard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  var selectedItem = 0;

  List children = [
    const DashboardPage(),
    const DashboardPage(),
    const DashboardPage(),
    const DashboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xc1553f3f),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xc1553f2f),
        selectedItemColor: const Color(0xc1ece6e8),
        iconSize: 27.0,
        currentIndex: selectedItem,
        unselectedLabelStyle: const TextStyle(
          color: Color(0xc1ac9b88),
        ),
        unselectedItemColor: const Color(0xc1ac9b90),
        onTap: (currentindex) {
          setState(() {
            selectedItem = currentindex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xc1ece6e8),
            ),
            label: 'Home',
            backgroundColor: Color(0xc10e0b06),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xc1ece6e8),
            ),
            label: 'Search',
            backgroundColor: Color(0xc1931e3b),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Color(0xc1ece6e8),
            ),
            label: 'Photo',
            backgroundColor: Color(0xc15f75b8),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xc1ece6e8),
            ),
            label: 'Profile',
            backgroundColor: Color(0xc1237642),
          ),
        ],
      ),
    );
  }
}

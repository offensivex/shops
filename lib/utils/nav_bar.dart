import '../screens/home.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabTapped;

  CustomNavigationBar({required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onTabTapped(context, index),
      backgroundColor: Colorz.pageBackgroundColor,
      elevation: 0,
      selectedItemColor: const Color.fromARGB(255, 108, 108, 108),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        _buildNavigationBarItem(Icons.home_outlined, 'Home', 0),
        _buildNavigationBarItem(Icons.message_outlined, 'Phishing Check', 1),
        _buildNavigationBarItem(Icons.person_4_outlined, 'Profile', 4),
      ],
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem(
      IconData icon, String label, int itemIndex) {
    return BottomNavigationBarItem(
      backgroundColor: Colorz.pageBackgroundColor,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),

          color: currentIndex == itemIndex
              ? Colors.blue // Selected icon background color
              : Colors.transparent, // Unselected icon background color
        ),
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 3),
        child: Icon(
          icon,
          color: currentIndex == itemIndex
              ? Colors.white // Selected icon color
              : Colors.black, // Unselected icon color
          size: 25,
        ),
      ),
      label: label,
    );
  }

  void _onTabTapped(BuildContext context, int index) {
    if (index != currentIndex) {
      Widget page;
      switch (index) {
        case 0:
          page = Home();
          break;
        // case 1:
        //   page = CheckSpam();
        //   break;
        // case 4:
        //   page = ProfilePage();
        //   break;
        default:
          return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:social_flutter/Screens/homepage.dart';
import 'package:social_flutter/Screens/profilepage.dart';

import 'createpost.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavBarCurrentIndex = 0;
  List<Widget> bottomNavBarPages = [
    const HomePage(),
    const AddPostPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavBarPages[_bottomNavBarCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile')
        ],
        onTap: (value) {
          setState(() {
            _bottomNavBarCurrentIndex = value;
          });
        },
        currentIndex: _bottomNavBarCurrentIndex,
      ),
    );
  }
}

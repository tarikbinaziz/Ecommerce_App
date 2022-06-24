import 'package:ecomerch_app_v1/pages/account.dart';
import 'package:ecomerch_app_v1/pages/add.dart';
import 'package:ecomerch_app_v1/pages/chat.dart';
import 'package:ecomerch_app_v1/pages/home.dart';
import 'package:ecomerch_app_v1/pages/my_adds.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomeScreen(),
    MyAddsScreen(),
    AddScreen(),
    ChatScreen(),
    AccountScreen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff5364F4),
        unselectedItemColor: Color(0xffC4C4C4),
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_bag_outlined), label: 'My Ads'),
          BottomNavigationBarItem(
              icon: const Icon(Icons.add_circle_outline), label: 'Add'),
          BottomNavigationBarItem(
              icon: const Icon(Icons.chat_bubble_outline), label: 'Chat'),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline_rounded), label: 'Account')
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}

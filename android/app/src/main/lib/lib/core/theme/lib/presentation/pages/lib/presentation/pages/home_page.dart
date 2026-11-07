import 'package:flutter/material.dart';
import 'reels_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _idx = 0;
  final screens = [const ReelsPage(), const Center(child: Text("Discover")), const Center(child: Text("Plus")), const Center(child: Text("Inbox")), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _idx,
        onTap: (i) => setState(() => _idx = i),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF6200EE),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Plus'),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

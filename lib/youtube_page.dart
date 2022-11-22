import 'package:flutter/material.dart';

import 'pages/add.dart';
import 'pages/home.dart';
import 'pages/library.dart';
import 'pages/shorts.dart';
import 'pages/subscription.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  int _selectedIndex = 0;

  final _screens = [
    const Home(),
    const Shorts(),
    const Add(),
    const Subscription(),
    const Library(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset(
            'assets/yt_logo.png',
          ),
        ),
        actions: const [
          Icon(
            Icons.cast,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.notifications,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.search,
          ),
          SizedBox(width: 15),
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://yt3.ggpht.com/UGYz2O7cj6-eYgBhu1avMYGfHQOysNijaTaVhxYRaO4JGbvFidZDv16P0Sgtj17Wx091ZkmI=s88-c-k-c0x00ffffff-no-rj-mo',
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outlined),
            activeIcon: Icon(Icons.add_circle),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            activeIcon: Icon(Icons.subscriptions_outlined),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Library',
          ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}

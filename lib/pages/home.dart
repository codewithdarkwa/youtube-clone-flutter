import 'package:flutter/material.dart';

import '../videos/vid_1.dart';
import '../videos/vid_2.dart';
import '../videos/vid_3.dart';
import '../widgets/video_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Vid1(),
                  ));
            },
            child: const VideoCard(
              thumbnail: 'assets/travelapp.jpg',
              timeStamp: '30:15',
              title: 'Flutter Travel App UI Built from Scratch',
              subInfo: 'codewithdarkwa • 300 views • 1 month ago',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Vid2(),
                  ));
            },
            child: const VideoCard(
              thumbnail: 'assets/cryptocurrency.png',
              timeStamp: '42:56',
              title: 'React Native vs Flutter I Built The Sam...',
              subInfo: 'codewithdarkwa • 200 views • 1 month ago',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Vid3(),
                  ));
            },
            child: const VideoCard(
              thumbnail: 'assets/routing.png',
              timeStamp: '8:44',
              title: 'Flutter Tutorial Routes & Navigation in...',
              subInfo: 'codewithdarkwa • 100 views • 1 month ago',
            ),
          ),
        ],
      ),
    );
  }
}

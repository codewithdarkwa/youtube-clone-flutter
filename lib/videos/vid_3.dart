import 'package:flutter/material.dart';
import 'package:get_tutorial/videos/vid_1.dart';
import 'package:get_tutorial/videos/vid_2.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../widgets/action_button.dart';
import '../widgets/video_card.dart';

class Vid3 extends StatefulWidget {
  const Vid3({super.key});

  @override
  State<Vid3> createState() => _Vid3State();
}

class _Vid3State extends State<Vid3> {
  final videoUrl = "https://youtu.be/QOlfzv_bLJk";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              bottomActions: [
                ProgressBar(
                  isExpanded: true,
                  colors: const ProgressBarColors(
                    playedColor: Colors.red,
                    handleColor: Colors.red,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Flutter Tutorial Routes & Navigation in...',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Text(
                    ' 200 views • 1 month ago',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://yt3.ggpht.com/UGYz2O7cj6-eYgBhu1avMYGfHQOysNijaTaVhxYRaO4JGbvFidZDv16P0Sgtj17Wx091ZkmI=s88-c-k-c0x00ffffff-no-rj-mo',
                            ),
                            radius: 20,
                          ),
                        ),
                        Text('CodeWithDarkwa  858'),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 27, 26, 26),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        'Subscribe',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const ActionButton(),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

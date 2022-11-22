import 'package:flutter/material.dart';
import 'package:get_tutorial/videos/vid_1.dart';
import 'package:get_tutorial/videos/vid_3.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../widgets/action_button.dart';
import '../widgets/video_card.dart';

class Vid2 extends StatefulWidget {
  const Vid2({super.key});

  @override
  State<Vid2> createState() => _Vid2State();
}

class _Vid2State extends State<Vid2> {
  final videoUrl = "https://youtu.be/q74mxtsu3rc";

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
                    'React Native vs Flutter I Built The Same Cryptocurrency UI with Both',
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: VideoCard(
                      thumbnail: 'assets/travelapp.jpg',
                      timeStamp: '30:15',
                      title: 'Flutter Travel App UI Built from Scrat...',
                      subInfo: 'codewithdarkwa • 300 views • 1 month ago',
                    ),
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: VideoCard(
                      thumbnail: 'assets/routing.png',
                      timeStamp: '8:44',
                      title: 'Flutter Tutorial Routes & Navigation in...',
                      subInfo: 'codewithdarkwa • 100 views • 1 month ago',
                    ),
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

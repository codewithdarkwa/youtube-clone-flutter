import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard(
      {super.key, this.thumbnail, this.title, this.subInfo, this.timeStamp});
  final thumbnail;
  final title;
  final timeStamp;
  final subInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Image.asset(
                thumbnail,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 9,
              bottom: 9,
              child: Container(
                color: Colors.black,
                child: Text(
                  timeStamp,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://yt3.ggpht.com/UGYz2O7cj6-eYgBhu1avMYGfHQOysNijaTaVhxYRaO4JGbvFidZDv16P0Sgtj17Wx091ZkmI=s88-c-k-c0x00ffffff-no-rj-mo',
                    ),
                    radius: 30,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        subInfo,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}

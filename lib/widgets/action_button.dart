import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(5),
          width: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 27, 26, 26),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.thumb_up_outlined),
              Text(
                '13',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(5),
          width: 120,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 27, 26, 26),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.reply_outlined),
              Text(
                'Share',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(5),
          width: 150,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 27, 26, 26),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.download_outlined),
              Text(
                'Download',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

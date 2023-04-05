import 'package:flutter/material.dart';

import 'avatar.dart';

class WhatsOnYourMind extends StatelessWidget {
  const WhatsOnYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: const [
          Avatar(
            size: 50,
            image: 'assets/users/1.jpg',
          ),
          SizedBox(
            width: 25,
          ),
          Flexible(
            child: Text(
              "What's on your mind, Jennie?",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}

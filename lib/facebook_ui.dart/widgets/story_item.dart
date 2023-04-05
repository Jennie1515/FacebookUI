import 'package:facebook/models/story.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story,
    required this.isFirst,
  });

  final Story story;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 15,
        //OJO EL OPERADOR TERNIARIO
        left: isFirst ? 20 : 0,
      ),
      height: 160,
      width: 90,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    size: 40,
                    ancho: 3,
                    image: story.avatar,
                  ),
                ),
              ],
            ),
          ),
          Text(
            story.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

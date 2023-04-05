import 'package:facebook/models/story.dart';
import 'package:flutter/material.dart';

import 'story_item.dart';

final _stories = [
  //Lista para las imagenes y el texto dentro de la shistorias
  Story(
    avatar: 'assets/users/1.jpg',
    username: 'Andrea',
    bg: 'assets/wallpapers/1.jpeg',
  ),
  Story(
    avatar: 'assets/users/2.jpg',
    username: 'Roberta',
    bg: 'assets/wallpapers/2.jpeg',
  ),
  Story(
    avatar: 'assets/users/3.jpg',
    username: 'Angela',
    bg: 'assets/wallpapers/3.jpeg',
  ),
  Story(
    avatar: 'assets/users/4.jpg',
    username: 'Fernanda',
    bg: 'assets/wallpapers/4.jpeg',
  ),
  Story(
    avatar: 'assets/users/5.jpg',
    username: 'Carla',
    bg: 'assets/wallpapers/5.jpeg',
  ),
  Story(
    avatar: 'assets/users/6.jpg',
    username: 'Maria',
    bg: 'assets/wallpapers/6.jpeg',
  ),
  Story(
    avatar: 'assets/users/7.jpg',
    username: 'Marisol',
    bg: 'assets/wallpapers/1.jpeg',
  ),
  Story(
    avatar: 'assets/users/8.jpg',
    username: 'Blue',
    bg: 'assets/wallpapers/2.jpeg',
  )
];

class Storys extends StatelessWidget {
  const Storys({super.key});
//ListView.Builder ayuda a crear una lista

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return StoryItem(
            story: story,
            isFirst: index == 0,
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}

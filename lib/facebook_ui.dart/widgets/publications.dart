import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook/facebook_ui.dart/widgets/avatar.dart';
import 'package:facebook/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_svg/flutter_svg.dart';

class PublicationItem extends StatelessWidget {
  const PublicationItem({
    super.key,
    required this.publications,
  });
  final Publications publications;
  String _getEmojiPath(Reaction reaction) {
    switch (reaction) {
      case Reaction.like:
        return 'assets/emojis/like.svg';
      case Reaction.love:
        return 'assets/emojis/heart.svg';
      case Reaction.laughing:
        return 'assets/emojis/laughing.svg';
      case Reaction.sad:
        return 'assets/emojis/sad.svg';
      case Reaction.shoking:
        return 'assets/emojis/shocked.svg';
      case Reaction.angry:
        return 'assets/emojis/angry.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    );

    const reactions = Reaction.values;
    return Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: padding,
          child: Row(
            children: [
              const Avatar(
                size: 38,
                image: 'assets/users/5.jpg',
              ),
              const SizedBox(width: 10),
              Text(publications.user.username),
              const Spacer(),
              Text(timeago.format(publications.fecha)),
            ],
          ),
        ),
        CachedNetworkImage(
          imageUrl: publications.imagePu,
          height: 180,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: padding.copyWith(top: 15),
          child: Text(
            publications.title,
          ),
        ),
        Row(
          children: [
            ...List.generate(reactions.length, (index) {
              final reaction = reactions[index];
              return SvgPicture.asset(
                _getEmojiPath(reaction),
                width: 30,
                height: 30,
              );
            })
          ],
        )
      ]),
    );
  }
}

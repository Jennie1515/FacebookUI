class Publications {
  final User user;
  final String title;
  final DateTime fecha;
  final String imagePu;
  final int commentsCount;
  final int sharesCount;
  final Reaction currentUserReaction;

  Publications({
    required this.title,
    required this.sharesCount,
    required this.commentsCount,
    required this.fecha,
    required this.imagePu,
    required this.user,
    required this.currentUserReaction,
  });
}

class User {
  final String avatar;
  final String username;

  User({
    required this.avatar,
    required this.username,
  });
}

enum Reaction {
  like,
  love,
  laughing,
  sad,
  shoking,
  angry,
}

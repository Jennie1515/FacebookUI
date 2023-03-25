import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String image;
  const Avatar({super.key, required this.size, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          size * 0.5,
        ),
        child: Image.asset(
          image,
          width: size,
          height: size,
        ),
      ),
    );
  }
}

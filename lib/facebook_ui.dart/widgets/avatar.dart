import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String image;
  final double ancho;
  const Avatar({
    super.key,
    required this.size,
    required this.image,
    this.ancho = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: ancho,
            color: Colors.white,
          ),
          image: DecorationImage(
            image: AssetImage(image),
          )),
    );
  }
}

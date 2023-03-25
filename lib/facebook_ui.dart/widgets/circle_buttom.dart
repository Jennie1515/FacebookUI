import 'package:flutter/material.dart';

class CircleButtom extends StatelessWidget {
  const CircleButtom({
    super.key,
    required this.color,
    required this.icon,
    this.showBadge = false,
  });

  final Color color;
  final IconData icon;
  final bool showBadge;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 16,
            ),
          ),
          if (showBadge)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(width: 3, color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:facebook/facebook_ui.dart/widgets/circle_buttom.dart';
import 'package:flutter/material.dart';

class QuickButtom extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  const QuickButtom({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButtom(
            color: color.withOpacity(0.6),
            icon: icon,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:facebook/facebook_ui.dart/widgets/quick_buttom.dart';
import 'package:facebook/icons/custom_icons_icons.dart';

import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: const [
            QuickButtom(
              color: Color(0xff92BE87),
              icon: CustomIcons.photos,
              text: 'Galery',
            ),
            SizedBox(
              width: 15,
            ),
            QuickButtom(
              color: Color(0xff2880d4),
              icon: CustomIcons.user_friends,
              text: 'Tag Friends',
            ),
            SizedBox(
              width: 15,
            ),
            QuickButtom(
              color: Color(0xffFB7171),
              icon: CustomIcons.video_camera,
              text: 'Live',
            ),
          ],
        ),
      ),
    );
  }
}

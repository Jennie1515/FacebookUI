import 'package:facebook/facebook_ui.dart/widgets/circle_buttom.dart';
import 'package:facebook/facebook_ui.dart/widgets/quick_actions.dart';
import 'package:facebook/facebook_ui.dart/widgets/whats_on_your_mind.dart.dart';
import 'package:facebook/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
          width: 150,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: const [
          CircleButtom(
            color: Color(0xffBFBFBF),
            icon: CustomIcons.search,
          ),
          SizedBox(
            width: 13,
          ),
          CircleButtom(
            color: Color(0xffFE7574),
            icon: CustomIcons.bell,
          ),
          SizedBox(
            width: 13,
          ),
          CircleButtom(
            color: Color(0xff7BBAFF),
            icon: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(
            width: 13,
          ),
          CircleButtom(
            color: Color(0xff1C86E4),
            icon: CustomIcons.messenger,
          ),
          SizedBox(
            width: 13,
          ),
        ],
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ).copyWith(
            top: 15,
          ),
          children: const [
            WhatsOnYourMind(),
            SizedBox(
              height: 30,
            ),
            QuickActions(),
          ]),
    );
  }
}

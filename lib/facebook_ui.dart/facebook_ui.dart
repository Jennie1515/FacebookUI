import 'package:facebook/facebook_ui.dart/widgets/circle_buttom.dart';
import 'package:facebook/facebook_ui.dart/widgets/publications.dart';
import 'package:facebook/facebook_ui.dart/widgets/quick_actions.dart';
import 'package:facebook/facebook_ui.dart/widgets/story.dart';
import 'package:facebook/facebook_ui.dart/widgets/whats_on_your_mind.dart.dart';
import 'package:facebook/icons/custom_icons_icons.dart';
import 'package:facebook/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publicationList = <Publications>[];
    /*El paquete faker es para simular tomar informacion falsa, es decir, 
    que genera datos sin yo tener que inventarlos, nombre, fotos de perfil.
    etc...*/

    for (int i = 0; i <= 50; i++) {
      final random = faker.randomGenerator;
      const reactions = Reaction.values;
      final reactionsIndex = random.integer(
        reactions.length - 1,
      );

      final publication = Publications(
          title: faker.lorem.sentence(),
          sharesCount: random.integer(10000),
          commentsCount: random.integer(50000),
          fecha: faker.date.dateTime(),
          imagePu: faker.image.image(),
          user: User(
            avatar: faker.image.image(),
            username: faker.person.name(),
          ),
          currentUserReaction: reactions[reactionsIndex]);
      //para agregar mi instancia de la clase publications a la lista
      publicationList.add(publication);
    }
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
      body: ListView(children: [
        const SizedBox(height: 10),
        const WhatsOnYourMind(),
        const SizedBox(height: 30),
        const QuickActions(),
        const SizedBox(height: 30),
        const Storys(),
        const SizedBox(height: 20),
        ListView.builder(
          //ESTE PARAMETRO HACE QUE EL SCROLL LO HAGA EL LIST PADRE
          physics: const NeverScrollableScrollPhysics(),
          //Para que el listView calcule su altura de manera automatica.
          shrinkWrap: true,
          itemBuilder: (context, index) => PublicationItem(
            publications: publicationList[index],
          ),
          itemCount: publicationList.length,
        )
      ]),
    );
  }
}

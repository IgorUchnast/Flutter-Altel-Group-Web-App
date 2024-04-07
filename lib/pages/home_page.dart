import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/container_box.dart';
import 'package:flutter_web_app/components/image_animated.dart';
import 'package:flutter_web_app/components/subtitle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const ImageAnimatedContainer(),
        const Subtitle(
          subtitle: "Nasze działania",
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoxContainer(
              text: "Serwisy",
              text1: "images/elevator.png",
            ),
            BoxContainer(
              text: "Dźwigi",
              text1: "images/gear.png",
            ),
            BoxContainer(
              text: "Technologia",
              text1: "images/technology.png",
            ),
            BoxContainer(
              text: "Cele",
              text1: "images/plans.png",
            ),
          ],
        ),
        const Subtitle(
          subtitle: "Aktualności",
        ),
        Container(
          width: screenSize.width * 0.4,
          height: screenSize.height * 0.4,
          color: Colors.white,
        ),
        const ContactContainer()
      ],
    );
  }
}

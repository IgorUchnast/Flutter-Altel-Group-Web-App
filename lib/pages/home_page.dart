import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/box_information.dart';
import 'package:flutter_web_app/components/contact_container.dart';
// import 'package:flutter_web_app/components/container_box.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const ImageAnimatedContainer(),
        const Subtitle(
          subtitle: "Nasze działania",
        ),
        const SizedBox(
          height: 40,
        ),
        const Wrap(
          children: [
            InformationContainer(text: "SERWISY", text1: ""),
            InformationContainer(text: "DŹWIGI", text1: ""),
          ],
        ),
        const Wrap(
          children: [
            InformationContainer(text: "AKTUALNOŚCI", text1: ""),
            InformationContainer(text: "TECHNOLOGIA", text1: ""),
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

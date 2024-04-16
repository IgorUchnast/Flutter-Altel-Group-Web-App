import 'package:flutter/material.dart';
// import 'package:flutter_web_app/constants/fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class AltelContainer extends StatefulWidget {
  const AltelContainer({super.key});

  @override
  State<AltelContainer> createState() => _AltelContainerState();
}

class _AltelContainerState extends State<AltelContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Image.asset(
      "images/logo3.png",
      scale: 2,
    );
  }
}

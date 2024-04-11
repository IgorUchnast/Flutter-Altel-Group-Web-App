import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/subtitle.dart';
import 'package:flutter_web_app/constants/fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({
    super.key,
    required this.imageText,
    required this.text,
    required this.subtitle,
  });
  final String imageText;
  final String text;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Stack(
          //   alignment: Alignment.centerLeft,
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          //       width: screenSize.width,
          //       height: 350,
          //       child: Image.asset(
          //         imageText,
          //         fit: BoxFit.cover,
          //         width: screenSize.width,
          //         height: 400,
          //       ),
          //     ),
          //     Positioned(
          //       left: 70,
          //       child: Text(text, style: AGfonts.animatedImageFont),
          //     ),
          //   ],
          // ),
          Subtitle(
            subtitle: subtitle,
          ),
        ],
      ),
    );
  }
}

class TopImageContainer extends StatelessWidget {
  const TopImageContainer({
    super.key,
    required this.imageText,
    required this.text,
  });
  final String imageText;
  final String text;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: screenSize.width,
          height: 350,
          child: Image.asset(
            imageText,
            fit: BoxFit.cover,
            width: screenSize.width,
            height: 400,
          ),
        ),
        Container(
          height: 350,
          width: screenSize.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.0),
              ],
            ),
          ),
        ),
        Positioned(
          left: 70,
          child: Text(text, style: AGfonts.animatedImageFont),
        ),
      ],
    );
  }
}

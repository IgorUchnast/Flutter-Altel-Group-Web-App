import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/subtitle.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              width: screenSize.width,
              height: 350,
              child: Image.asset(
                imageText,
                fit: BoxFit.cover,
                width: screenSize.width,
                height: 400,
              ),
            ),
            Positioned(
              left: 70,
              child: Text(
                text,
                style: GoogleFonts.asar(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  backgroundColor: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        Subtitle(
          subtitle: subtitle,
        ),
      ],
    );
  }
}

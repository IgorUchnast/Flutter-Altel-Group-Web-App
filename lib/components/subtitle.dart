import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    super.key,
    required this.subtitle,
  });
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          subtitle,
          style: GoogleFonts.asar(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.w900),
        ),
        Divider(
          color: const Color.fromARGB(255, 205, 205, 205),
          endIndent: screenSize.width * 0.48,
          indent: screenSize.width * 0.48,
        ),
        SizedBox(
          height: screenSize.height * 0.06,
        ),
      ],
    );
  }
}

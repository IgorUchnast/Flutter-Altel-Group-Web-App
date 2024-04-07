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
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            subtitle,
            style: GoogleFonts.cinzel(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Divider(
          color: const Color.fromARGB(255, 182, 182, 182),
          endIndent: screenSize.width * 0.48,
          indent: screenSize.width * 0.48,
          thickness: 2,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

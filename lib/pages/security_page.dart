import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomPage(
          subtitle: "Bezpieczeństwo",
          imageText: "images/Services.jpeg",
          text:
              "\tCałodobowe pogotowie dźwigowe realizujące zgłoszenia\n w dni robocze, soboty, niedziele i święta",
        ),
        Container(
          height: 400,
          width: screenSize.width * 0.5,
          alignment: Alignment.centerLeft,
          child: Text(
            "",
            style: GoogleFonts.asar(
              color: const Color.fromARGB(255, 48, 48, 48),
              fontSize: 20,
            ),
            softWrap: true,
          ),
        ),
        const ContactContainer()
      ],
    );
  }
}

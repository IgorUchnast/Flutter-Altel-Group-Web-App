import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomPage(
          subtitle: "Kontakt",
          imageText: "images/firm.png",
          text:
              "\tNasze usługi\n cieszą się uznaniem klientów, \n którzy doceniają nasze zaangażowanie i niezawodność",
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

import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CranesPage extends StatelessWidget {
  const CranesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomPage(
          subtitle: "Dźwigi",
        ),
        Container(
          height: 400,
          width: screenSize.width * 0.5,
          alignment: Alignment.centerLeft,
          child: Text(
            "Naszym klientom zapewniamy szeroki zakres produkcji dźwigów najwyzszej klasy.\nOferujemy:\n\t\t- Dźwigi hydrauliczne\n\t\t- Dźwigi towarowe\n\t\t- Dźwigi elektryczne\n\t\t- Suwnice\n\t\t- Wózki widłowe\n\t\t- Sterowanie dźwigów\n\t\t- Platformy dla osób niepełnosprawnych",
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

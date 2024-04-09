import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 300,
      color: Colors.black.withOpacity(0.9),
      // color: Colors.blue.withOpacity(0.1),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoCard(
            infoText: "Adres email: biuro@altel-lift.pl",
            contactIcon: Icons.email,
          ),
          InfoCard(
            infoText: "Numer telefonu: +00 48 322 668 047",
            contactIcon: Icons.phone,
          ),
          InfoCard(
            infoText:
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tAltel-Group sp. z o.o.\nAdres: ul. Małobądzka 143, 42-500 Będzin",
            contactIcon: Icons.location_on,
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.infoText,
    required this.contactIcon,
  });
  final String infoText;
  final IconData contactIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            contactIcon,
            size: 100,
            color: Colors.amber,
          ),
          Text(
            infoText,
            style: GoogleFonts.asar(
              // color: const Color.fromARGB(255, 48, 48, 48),
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

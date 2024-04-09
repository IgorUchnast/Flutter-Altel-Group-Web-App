import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationContainer extends StatefulWidget {
  const InformationContainer({
    super.key,
    // required this.icon,
    required this.text,
    required this.text1,
  });

  // final IconData icon;
  final String text;
  final String text1;

  @override
  State<InformationContainer> createState() => _InformationContainerState();
}

class _InformationContainerState extends State<InformationContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            bottom: 5,
            left: 0,
            right: 5,
          ),
          padding: const EdgeInsets.only(top: 40, left: 40),
          // width: screenSize.width * 0.1,
          width: 600,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.15),
            border: Border.all(
              color: Colors.white,
              // color: isSelected ? Colors.blue : Colors.black,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: isSelected
                    ? Colors.black.withOpacity(0.2)
                    : Colors.white.withOpacity(0),
                spreadRadius: 5,
                blurRadius: 7, // How much the shadow is blurred
                offset: const Offset(0, 3), // Changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.text,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      // isSelected ? Colors.blue.withOpacity(0.8) : Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 255, 222, 59),
                    height: 7,
                    width: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

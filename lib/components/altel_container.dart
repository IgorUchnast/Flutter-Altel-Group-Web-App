import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: const EdgeInsets.all(10),
          width: 400,
          // width: isSelected ? 410 : 400,
          height: 90,
          // height: isSelected ? 100 : 90,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              // color: isSelected ? Colors.blue : Colors.black,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: isSelected
                    ? Colors.blue.withOpacity(0.2)
                    : Colors.white.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7, // How much the shadow is blurred
                offset: const Offset(0, 3), // Changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Image.asset(
              //   "images/logo2.png",
              //   scale: 2,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/elevator.png",
                    scale: 1.7,
                    color: Colors.black,
                    // colorBlendMode: BlendMode.color,
                  ),
                  Text(
                    "Altel Group",
                    style: GoogleFonts.asar(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Text(
                "Altel Group sp. z o.o.",
                style: GoogleFonts.asar(
                  color: Colors.black,
                  // color: isSelected ? Colors.blue : Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

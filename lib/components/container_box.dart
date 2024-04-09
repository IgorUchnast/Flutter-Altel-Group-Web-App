import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxContainer extends StatefulWidget {
  const BoxContainer({
    super.key,
    // required this.icon,
    required this.text,
    required this.text1,
  });

  // final IconData icon;
  final String text;
  final String text1;

  @override
  State<BoxContainer> createState() => _BoxContainerState();
}

class _BoxContainerState extends State<BoxContainer> {
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
            bottom: 40,
            left: 20,
            right: 20,
          ),
          padding: const EdgeInsets.all(10),
          width: 300,
          height: 00,
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
                    ? Colors.blue.withOpacity(0.4)
                    : Colors.white.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7, // How much the shadow is blurred
                offset: const Offset(0, 3), // Changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.text1,
                color: isSelected ? Colors.blue.withOpacity(0.8) : Colors.black,
                scale: 0.7,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.text,
                style: GoogleFonts.cinzel(
                  color:
                      isSelected ? Colors.blue.withOpacity(0.8) : Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

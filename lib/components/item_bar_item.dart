import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNavigationBarItem extends StatefulWidget {
  const TopNavigationBarItem({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<TopNavigationBarItem> createState() => _TopNavigationBarItemState();
}

class _TopNavigationBarItemState extends State<TopNavigationBarItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // bool isSelected = false;
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
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        style: isSelected
            ? GoogleFonts.asar(
                color: Colors.blue,
                fontSize: 25.0,
                // decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.blue,
              )
            : GoogleFonts.asar(
                color: Colors.black,
                fontSize: 20.0,
              ),
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}

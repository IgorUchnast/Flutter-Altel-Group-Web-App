import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: GoogleFonts.oswald(
        color: const Color.fromARGB(255, 49, 41, 18),
        fontSize: 23,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNavigationBarItem extends StatefulWidget {
  const TopNavigationBarItem({
    super.key,
    required this.title,
    required this.routeName,
    // required this.chosenPage,
  });
  final String title;
  final String routeName;
  // final Color chosenPage;
  @override
  State<TopNavigationBarItem> createState() => _TopNavigationBarItemState();
}

class _TopNavigationBarItemState extends State<TopNavigationBarItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // bool isSelected = false;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(widget.routeName);
      },
      child: MouseRegion(
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
              ? GoogleFonts.cinzel(
                  color: Colors.black,
                  fontSize: 20.0,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                  fontWeight: FontWeight.w500,
                  decorationColor: Colors.black,
                )
              : GoogleFonts.cinzel(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              widget.title,
            ),
          ),
        ),
      ),
    );
  }
}

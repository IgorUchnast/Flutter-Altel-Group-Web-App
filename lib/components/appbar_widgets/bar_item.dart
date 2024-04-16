import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

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
          setState(
            () {
              isSelected = false;
            },
          );
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          // style: AGfonts.tabBarFont,
          style: isSelected ? AGfonts.tabBarFontHover : AGfonts.tabBarFont,
          child: Container(
            margin: const EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 15,
              top: 15,
            ),
            child: Text(
              widget.title,
              // style: AGfonts.tabBarFont,
            ),
          ),
        ),
      ),
    );
  }
}

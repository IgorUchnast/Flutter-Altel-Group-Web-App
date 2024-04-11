import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/fonts.dart';

class NavigatingPageButton extends StatefulWidget {
  const NavigatingPageButton({
    super.key,
    required this.containerKey,
    required this.navigatingText,
  });
  final GlobalKey containerKey;
  final String navigatingText;
  @override
  State<NavigatingPageButton> createState() => _NavigatingPageButtonState();
}

class _NavigatingPageButtonState extends State<NavigatingPageButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        scrollTo(widget.containerKey);
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
          style: isSelected ? AGfonts.navigatorHover : AGfonts.navigatorFont,
          // child: Container(
          //   color: Colors.white,
          //   padding: const EdgeInsets.only(top: 20, bottom: 20),
          //   margin: const EdgeInsets.only(
          //     left: 25,
          //     right: 25,
          //     bottom: 15,
          //     top: 15,
          //   ),
          //   child: Text(
          //     widget.navigatingText.toUpperCase(),
          //     style:
          //         isSelected ? AGfonts.navigatorHover : AGfonts.navigatorFont,
          //   ),
          // ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              right: 20,
              left: 20,
            ),
            child: Text(
              widget.navigatingText.toUpperCase(),
              style:
                  isSelected ? AGfonts.navigatorHover : AGfonts.navigatorFont,
            ),
          ),
        ),
      ),
    );
  }

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }
}

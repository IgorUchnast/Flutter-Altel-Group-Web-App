import 'package:flutter/material.dart';

class IconBarItem extends StatefulWidget {
  const IconBarItem({
    super.key,
    required this.iconBarItem,
  });
  final Icon iconBarItem; // To jest już gotowa ikona.

  @override
  State<IconBarItem> createState() => _IconBarItemState();
}

class _IconBarItemState extends State<IconBarItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
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
        duration: const Duration(milliseconds: 200),
        child: Icon(
          widget.iconBarItem.icon,
          color: isSelected ? Colors.blue : Colors.black,
          size: isSelected ? 30 : 25,
        ),
      ),
    );
  }
}

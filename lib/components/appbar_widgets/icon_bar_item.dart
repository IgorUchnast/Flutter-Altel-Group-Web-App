import 'package:flutter/material.dart';

class IconBarItem extends StatefulWidget {
  const IconBarItem({
    super.key,
    required this.iconBarItem,
    required this.routeName,
  });
  final String routeName;
  final Icon iconBarItem;

  @override
  State<IconBarItem> createState() => _IconBarItemState();
}

class _IconBarItemState extends State<IconBarItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
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
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: Icon(
            widget.iconBarItem.icon,
            color: isSelected ? Colors.orange : Colors.black,
            size: isSelected ? 35 : 30,
          ),
        ),
      ),
    );
  }
}

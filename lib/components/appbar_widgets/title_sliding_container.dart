import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleSlidingContainer extends StatefulWidget {
  const TitleSlidingContainer({
    super.key,
    required this.title,
    required this.isSelected,
    required this.txtList,
    required this.numberOfItems,
    required this.onHover,
    required this.routeName,
    required this.pageIndex,
  });
  final List<String> txtList;
  final String title;
  final bool isSelected;
  final int numberOfItems;
  final int pageIndex;
  final Function(bool) onHover;
  final List<String> routeName;

  @override
  State<TitleSlidingContainer> createState() => _TitleSlidingContainerState();
}

class _TitleSlidingContainerState extends State<TitleSlidingContainer> {
  // bool isSelected = false;
  // bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(
                widget.routeName[widget.pageIndex],
              ),
              child: MouseRegion(
                onEnter: (_) => widget.onHover(true),
                // onExit: (_) => widget.onHover(false),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: widget.isSelected ? Colors.amber : Colors.white,
                    border: const Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 0.2,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 0.2,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 0.2,
                      ),
                      left: BorderSide(
                        color: Colors.black,
                        width: 0.2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      widget.title.toUpperCase(),
                      style: TextStyle(
                        color: widget.isSelected ? Colors.black : Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

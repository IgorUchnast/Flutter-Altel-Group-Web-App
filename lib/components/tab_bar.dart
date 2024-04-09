// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/altel_container.dart';
import 'package:flutter_web_app/components/icon_bar_item.dart';
import 'package:flutter_web_app/components/bar_item.dart';

class TopNaviagtionBar extends StatefulWidget {
  const TopNaviagtionBar({
    super.key,
    required this.barItem,
    required this.barIcon,
  });
  final List<String> barItem;
  final Icon barIcon;
  @override
  State<TopNaviagtionBar> createState() => _TopNaviagtionBarState();
}

class _TopNaviagtionBarState extends State<TopNaviagtionBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AltelContainer(),
          SizedBox(
            width: screenSize.width * 0.15,
          ),
          Container(
            width: 600,
            height: 90,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const IconBarItem(
                  routeName: "/",
                  iconBarItem: Icon(Icons.home),
                ),
                const SizedBox(
                  width: 5,
                ),
                TopNavigationBarItem(
                  title: widget.barItem[0],
                  routeName: "/o-firmie",
                ),
                TopNavigationBarItem(
                  title: widget.barItem[1],
                  routeName: "/oferta",
                ),
                TopNavigationBarItem(
                  title: widget.barItem[2],
                  routeName: "/kariera",
                ),
                TopNavigationBarItem(
                  title: widget.barItem[3],
                  routeName: "/kontakt",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

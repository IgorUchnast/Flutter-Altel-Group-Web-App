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
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(
        screenSize.width * 0.05,
        100,
        70,
        screenSize.width * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AltelContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const IconBarItem(
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
                routeName: "/usługi",
              ),
              TopNavigationBarItem(
                title: widget.barItem[3],
                routeName: "/bezpieczeństwo",
              ),
              TopNavigationBarItem(
                title: widget.barItem[4],
                routeName: "/kariera",
              ),
              TopNavigationBarItem(
                title: widget.barItem[5],
                routeName: "/kontakt",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/subsubtitle.dart';
import 'package:flutter_web_app/constants/fonts.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.txt,
    required this.subtitle,
  });
  final String txt;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.05),
        border: Border.all(
          color: Colors.black.withOpacity(0.01),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(40),
      margin: EdgeInsets.fromLTRB(
        screenSize.width * 0.23,
        40,
        screenSize.width * 0.23,
        40,
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SubSubTitle(subsubtitle: subtitle),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: Text(
                txt,
                style: AGfonts.textFont,
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/fonts.dart';

class SubSubTitle extends StatelessWidget {
  const SubSubTitle({
    super.key,
    required this.subsubtitle,
  });
  final String subsubtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              subsubtitle.toUpperCase(),
              style: AGfonts.subsubtitleFont,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 222, 59),
              height: 7,
              width: 60,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

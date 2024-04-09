import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/fonts.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    super.key,
    required this.subtitle,
  });
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50, left: screenSize.width * 0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    subtitle.toUpperCase(),
                    style: AGfonts.subtitleFont,
                  ),
                ],
              ),
              Container(
                color: const Color.fromARGB(255, 255, 222, 59),
                height: 7,
                width: 60,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

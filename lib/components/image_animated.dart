// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/fonts.dart';
import 'dart:ui' as ui;

class ImageAnimatedContainer extends StatefulWidget {
  const ImageAnimatedContainer({super.key});

  @override
  _ImageAnimatedContainerState createState() => _ImageAnimatedContainerState();
}

class _ImageAnimatedContainerState extends State<ImageAnimatedContainer>
    with SingleTickerProviderStateMixin {
  bool isSelected = false;
  int _currentIndex = 0;
  final List<String> images = [
    // "images/new1.jpg",
    "images/slider.jpg",
    // "images/mapa.png",
    "images/new2.jpg",
    "images/1000s.jpg",
    // "images/im5.png",
    // "images/elevatorbackground.jpg",
    // "images/Services.jpeg",
    // "images/im4.jpeg",
  ];
  final List<String> texts = [
    " Kompleksowa obsługa i bezpieczny\t\t \n serwis wind od 1999 roku ",
    " Innowacyjne rozwiązania\t \n dla przemysłu\t ",
    // " Bezpieczne i sprawdzone\t \n serwisy wind dla naszych klientów ",
    " Zapewniamy bezpieczeństwo na każdym piętrze\t \n dzięki naszemu doświadczeniu w serwisie \n wind od ponad dwóch dekad ",
    // " Nasze usługi\n cieszą się uznaniem klientów,\t \n którzy doceniają nasze zaangażowanie i niezawodność ",
    // " Tworzymy niestandardowe projekty wind,\t \n łącząc innowacyjność z indywidualnymi potrzebami klientów. ",
  ];

  late final AnimationController _controller;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _controller.forward();

    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % images.length;
      });
      _controller.forward(from: 0.0);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.width * 0.25,
      child: AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: Stack(
          key: ValueKey<int>(_currentIndex),
          alignment: Alignment.centerLeft,
          children: [
            MouseRegion(
              onEnter: (_) => setState(() => isSelected = true),
              onExit: (_) => setState(() => isSelected = false),
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: screenSize.width,
                height: screenSize.width * 0.25,
                child: isSelected
                    ? ImageFiltered(
                        imageFilter:
                            ui.ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                        child: Image.asset(
                          images[_currentIndex],
                          fit: BoxFit.fitWidth,
                        ),
                      )
                    : Image.asset(
                        images[_currentIndex],
                        fit: BoxFit.cover,
                        width: screenSize.width,
                        height: 400,
                      ),
              ),
            ),
            Container(
              height: screenSize.width * 0.25,
              width: screenSize.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.1),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 70,
              child: Container(
                height: 150,
                width: double.maxFinite,
                // color: Colors.black.withOpacity(1),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          texts[_currentIndex],
                          style: AGfonts.animatedImageFont,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

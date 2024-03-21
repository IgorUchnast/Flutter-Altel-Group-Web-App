// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    "images/elevatorbackground.jpg",
    "images/im5.png",
    "images/1000s.jpg",
    "images/Services.jpeg",
    "images/slider.jpg",
    "images/im4.jpeg",
  ];
  final List<String> texts = [
    " Kompleksowa obsługa i bezpieczny \n serwis wind od 1999 roku ",
    " Innowacyjne rozwiązania \n dla przemysłu ",
    " Bezpieczne i sprawdzone \n serwisy wind dla naszych klientów ",
    " Zapewniamy bezpieczeństwo na każdym piętrze \n dzięki naszemu doświadczeniu w serwisie \n wind od ponad dwóch dekad ",
    " Nasze usługi\n cieszą się uznaniem klientów, \n którzy doceniają nasze zaangażowanie i niezawodność ",
    " Tworzymy niestandardowe projekty wind, \n łącząc innowacyjność z indywidualnymi potrzebami klientów. ",
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
      height: 350,
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
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                width: screenSize.width,
                height: 500,
                child: isSelected
                    ? ImageFiltered(
                        imageFilter:
                            ui.ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                        child: Image.asset(images[_currentIndex],
                            fit: BoxFit.fitWidth),
                      )
                    : Image.asset(images[_currentIndex],
                        fit: BoxFit.cover,
                        width: screenSize.width,
                        height: 400),
              ),
            ),
            Positioned(
              left: 70,
              child: Text(
                texts[_currentIndex],
                style: GoogleFonts.asar(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  backgroundColor: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

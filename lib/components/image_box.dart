// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

class ImageContainerBox extends StatefulWidget {
  const ImageContainerBox({super.key});

  @override
  _ImageContainerBoxState createState() => _ImageContainerBoxState();
}

class _ImageContainerBoxState extends State<ImageContainerBox>
    with SingleTickerProviderStateMixin {
  bool isSelected = false;
  int _currentIndex = 0;
  final List<String> images = [
    "images/elevatorbackground.jpg",
    "images/im2.png",
    "images/im3.jpg",
  ];
  final List<String> texts = [
    " Kompleksowa obsługa i bezpieczny \n serwis wind od 1999 roku ",
    " Innowacyjne rozwiązania \n dla przemysłu ",
    " Bezpieczne i sprawdzone \n serwisy wind dla naszych klientów ",
  ];

  late final AnimationController _controller;
  late final Animation<double> _opacityAnimation;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start displaying the first image immediately
    _controller.forward();

    // Change image and text every 7 seconds
    _timer = Timer.periodic(const Duration(seconds: 7), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % images.length;
      });
      // Restart the animation
      _controller.forward(from: 0);
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
      height: 400, // Fixed height to prevent infinite size errors.
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          // Image transition with cross-fade effect
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeOut,
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
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                width: screenSize.width,
                height: 500,
                child: isSelected
                    ? ImageFiltered(
                        imageFilter: ui.ImageFilter.blur(
                          sigmaX: 1.5,
                          sigmaY: 1.5,
                        ),
                        child: Image.asset(
                          images[_currentIndex],
                          fit: BoxFit.fitWidth,
                          key: ValueKey<int>(_currentIndex),
                        ),
                      )
                    : Image.asset(
                        images[_currentIndex],
                        key: ValueKey<int>(_currentIndex),
                        fit: BoxFit.cover,
                        width: screenSize.width,
                        height: 400,
                      ),
              ),
            ),
          ),
          // Text transition with fade effect
          AnimatedBuilder(
            animation: _opacityAnimation,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: child,
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                texts[_currentIndex],
                key: ValueKey<int>(_currentIndex),
                // textAlign: TextAlign.center,
                style: GoogleFonts.asar(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  backgroundColor: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

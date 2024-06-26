import 'package:flutter/material.dart';
// import 'package:flutter_web_app/components/container_box.dart';
// import 'package:flutter_web_app/components/subtitle.dart';
import 'package:flutter_web_app/components/tab_bar.dart';
// import 'package:google_fonts/google_fonts.dart';

class StartingPageWeb extends StatefulWidget {
  const StartingPageWeb({
    super.key,
    required this.page,
  });

  final Widget page;

  @override
  State<StartingPageWeb> createState() => _StartingPageWebState();
}

class _StartingPageWebState extends State<StartingPageWeb> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        shadowColor: Colors.black.withOpacity(0.7),
        // toolbarHeight: screenSize.height * 0.1,
        backgroundColor: Colors.white,
        elevation: 100,
        iconTheme: const IconThemeData(
          size: 25,
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.only(
            left: 0,
            right: screenSize.width * 0.01,
          ),
          child: const TopNaviagtionBar(
            barItem: [
              "O Firmie",
              "Dźwigi",
              "Oferta",
              "Bezpieczeństwo",
              "Kariera",
              "Kontakt",
            ],
            barIcon: Icon(Icons.home),
          ),
        ),
      ),
      // endDrawer: const Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: widget.page,
        ),
      ),
    );
  }
}

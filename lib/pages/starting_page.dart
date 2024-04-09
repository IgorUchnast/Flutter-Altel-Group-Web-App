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
        shadowColor: Colors.black.withOpacity(0.5),
        backgroundColor: Colors.white,
        elevation: 100,
        iconTheme: const IconThemeData(
          size: 25,
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.only(
            left: 100,
            right: screenSize.width * 0.01,
          ),
          child: const TopNaviagtionBar(
            barItem: [
              "O FIRMIE",
              "OFERTA",
              "KARIERA",
              "KONTAKT",
            ],
            barIcon: Icon(Icons.home),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(10, 1),
          child: Container(
            color: Colors.black,
            height: 4.0,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: widget.page,
        ),
      ),
    );
  }
}

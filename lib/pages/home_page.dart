import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/tab_bar.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});
  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: screenSize.height * 0.15,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25,
          color: Colors.black,
        ),
        title: const TopNaviagtionBar(
          barItem: [
            "O Firmie",
            "Oferta",
            "Usługi",
            "Bezpieczeństwo",
            "Kontakt",
          ],
          barIcon: Icon(Icons.home),
        ),
      ),
      // endDrawer: const Drawer(),
      body: const Column(
        children: [],
      ),
    );
  }
}

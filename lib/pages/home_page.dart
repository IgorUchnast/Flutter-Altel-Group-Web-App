import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/navigation_bar.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});
  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Row(
          children: [
            TopNavigationBar(
              title: "Igor",
            )
          ],
        ),
      ),
    );
  }
}

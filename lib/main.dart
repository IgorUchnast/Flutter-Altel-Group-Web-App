import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/home_page.dart';
import 'package:flutter_web_app/views/mobile_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.deepPurple,
      //   ),
      //   useMaterial3: true,
      // ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return const HomePageWeb();
          } else {
            return const HomePageMobile();
          }
        },
      ),
    );
  }
}

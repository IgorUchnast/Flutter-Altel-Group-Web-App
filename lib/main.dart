import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/home_page.dart';
import 'package:flutter_web_app/pages/starting_page.dart';
import 'package:flutter_web_app/views/mobile_home_page.dart';
import "package:flutter_web_app/constants/routs.dart";
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: ,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.deepPurple,
      //   ),
      //   useMaterial3: true,
      // ),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: "/",
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return const StartingPageWeb(
              page: HomePage(),
            );
          } else {
            return const MobileHomePage();
          }
        },
      ),
    );
  }
}

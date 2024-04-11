import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/about_us_page.dart';
import 'package:flutter_web_app/pages/carier_page.dart';
import 'package:flutter_web_app/pages/contact_page.dart';
import 'package:flutter_web_app/pages/cranes_page.dart';
import 'package:flutter_web_app/pages/home_page.dart';
import 'package:flutter_web_app/pages/offer_page.dart';
import 'package:flutter_web_app/pages/security_page.dart';
import 'package:flutter_web_app/pages/starting_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: HomePage(),
          ),
          settings: settings,
        );
      case '/o-firmie':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: AboutUsPage(),
          ),
          settings: settings,
        );
      case '/dźwigi':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: CranesPage(),
          ),
          settings: settings,
        );
      case '/oferta':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: OfferPage(),
          ),
          settings: settings,
        );
      case '/bezpieczeństwo':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: SecurityPage(),
          ),
          settings: settings,
        );
      case '/kariera':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: CarrierPage(),
          ),
          settings: settings,
        );
      case '/kontakt':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: ContactPage(),
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(
            page: HomePage(),
          ),
          settings: settings,
        );
      // return MaterialPageRoute(
      //   builder: (_) {
      //     return const Center(
      //       child: Text(
      //         "Error Page",
      //       ),
      //     );
      //   },
      // );
    }
  }
}

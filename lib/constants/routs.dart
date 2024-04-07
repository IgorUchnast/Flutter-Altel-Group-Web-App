import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/starting_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(),
          settings: settings,
        );
      case '/o-firmie':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(),
          settings: settings,
        );
      case '/oferta':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(),
          settings: settings,
        );
      case '/usługi':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(),
          settings: settings,
        );
      case '/bezpieczeństwo':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(),
          settings: settings,
        );
      case '/kariera':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(),
          settings: settings,
        );
      case '/kontakt':
        return MaterialPageRoute(
          builder: (_) => const StartingPageWeb(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Center(
              child: Text(
                "Error Page",
              ),
            );
          },
        );
    }
  }
}

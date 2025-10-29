import 'package:flutter/material.dart';
import 'package:quetes/core/utils/app_strings.dart';

import '../../features/favourite_quote/presentation/screens/favourite_quote_screen.dart';
import '../../features/random_quote/presentation/screens/quote_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String favouriteQuoteScreenRoute = '/favourite';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const QuoteScreen());
      case Routes.favouriteQuoteScreenRoute:
        return MaterialPageRoute(builder: (_) => const FavouriteQuoteScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text(
            AppStrings.noRouteFound,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quetes/config/routes/app_routes.dart';
import 'package:quetes/core/utils/app_strings.dart';
import 'package:quetes/core/utils/hex_color.dart';
import 'package:quetes/features/random_quote/presentation/screens/quote_screen.dart';

import 'config/themes/app_theme.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: appTheme(),
      home: const QuoteScreen(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

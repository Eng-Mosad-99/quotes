import 'package:flutter/material.dart';
import 'package:quetes/core/utils/app_strings.dart';
import 'package:quetes/core/utils/hex_color.dart';
import 'package:quetes/features/random_quote/presentation/screens/quote_screen.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
       primaryColor: HexColor('#451BAB'),
        useMaterial3: true,
      ),
      home: const QuoteScreen(),
    );
  }
}

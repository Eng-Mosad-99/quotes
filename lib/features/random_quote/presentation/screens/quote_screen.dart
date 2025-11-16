import 'package:flutter/material.dart';
import 'package:quetes/core/utils/app_strings.dart';
import 'package:quetes/features/random_quote/presentation/widgets/quote_content.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});
  Widget _buildBodyContent() {
    return Column(
      children: [
        QuoteContent(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title:  const Text(AppStrings.appName,),
    );
    return Scaffold(
      appBar: appBar,
      body: _buildBodyContent(),
    );
  }
}

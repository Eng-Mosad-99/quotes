import 'package:flutter/material.dart';
import 'package:quetes/core/utils/app_strings.dart';
import 'package:quetes/features/random_quote/presentation/widgets/quote_content.dart';

import '../../../../core/utils/app_colors.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});
  Widget _buildBodyContent() {
    return Column(
      children: [
        const QuoteContent(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.refresh,
            size: 28,
            color: Colors.white,
          ),
        ),
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

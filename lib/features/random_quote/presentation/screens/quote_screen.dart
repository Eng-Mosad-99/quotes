import 'package:flutter/material.dart';
import 'package:quetes/config/routes/app_routes.dart';
import 'package:quetes/core/utils/constants.dart';
import 'package:quetes/core/utils/image_manager.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Constants.showErrorDialog(
                context: context,
                msg: 'Quote Error',
              ),
              child: Image.asset(
                ImgAssets.logo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

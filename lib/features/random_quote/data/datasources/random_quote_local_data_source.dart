import 'dart:convert';

import 'package:quetes/core/utils/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/exceptions.dart';
import '../models/quote_model.dart';

abstract class RandomQuoteLocalDataSource {
  Future<QuoteModel> getLastRandomQuote();
  Future<void> cacheRandomQuote(QuoteModel quote);
}

class RandomQuoteLocalDataSourceImpl implements RandomQuoteLocalDataSource {
  final SharedPreferences sharedPreferences;

  RandomQuoteLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<QuoteModel> getLastRandomQuote() {
    final jsonString =
        sharedPreferences.getString(AppStrings.cashedRandomQuote);
    if (jsonString != null) {
      final cachedQuote = QuoteModel.fromJson(jsonDecode(jsonString));
      return Future.value(cachedQuote);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheRandomQuote(QuoteModel quote) {
    return sharedPreferences.setString(
      AppStrings.cashedRandomQuote,
      json.encode(quote),
    );
  }
}

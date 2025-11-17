import 'dart:convert';

import 'package:quetes/core/api/end_point.dart';
import 'package:quetes/core/errors/exceptions.dart';
import 'package:quetes/features/random_quote/data/models/quote_model.dart';
import 'package:http/http.dart' as http;

abstract class RandomQuoteRemoteDataSource {
  Future<QuoteModel> getRandomQuote();
}

class RandomQuoteRemoteDataSourceImpl implements RandomQuoteRemoteDataSource {
  final http.Client client;

  RandomQuoteRemoteDataSourceImpl({required this.client});
  @override
  Future<QuoteModel> getRandomQuote() async {
    final randomQuoteUri = Uri.parse(EndPoints.randomQuote);
    final response = await client.get(
      randomQuoteUri,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return QuoteModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}

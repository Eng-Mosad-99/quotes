import 'package:dartz/dartz.dart';
import 'package:quetes/core/errors/failures.dart';

import '../entities/quote_entity.dart';

abstract class QuoteRepository {
  Future<Either<Failure, QuoteEntity>> getRandomQuote();
}
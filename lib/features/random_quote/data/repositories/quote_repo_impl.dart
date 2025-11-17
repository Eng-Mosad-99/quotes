import 'package:dartz/dartz.dart';
import 'package:quetes/core/errors/failures.dart';
import 'package:quetes/core/network/network_info.dart';
import 'package:quetes/features/random_quote/data/datasources/random_quote_local_data_source.dart';
import 'package:quetes/features/random_quote/data/datasources/random_quote_remote_data_source.dart';
import 'package:quetes/features/random_quote/domain/entities/quote_entity.dart';
import 'package:quetes/features/random_quote/domain/repositories/quote_repo.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final NetworkInfo networkInfo;
  final RandomQuoteRemoteDataSource remoteDataSource;
  final RandomQuoteLocalDataSource localDataSource;
  QuoteRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
    required this.localDataSource,
  });
  @override
  Future<Either<Failure, QuoteEntity>> getRandomQuote() {
    // TODO: implement getRandomQuote
    throw UnimplementedError();
  }
}

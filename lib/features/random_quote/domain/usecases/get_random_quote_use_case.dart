import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:quetes/core/errors/failures.dart';
import 'package:quetes/core/use_case/use_case.dart';
import 'package:quetes/features/random_quote/domain/entities/quote_entity.dart';

class GetRandomQuoteUseCase implements UseCase<QuoteEntity, NoParams> {
  final QuoteRepository repository;

  GetRandomQuoteUseCase(this.repository);
  @override
  Future<Either<Failure, QuoteEntity>> call(NoParams params) {
    return repository.getRandomQuote();
  }
}

//! if params
// class LoginParams extends Equatable {
//   final String userName;
//   final String password;

//   const LoginParams({
//     required this.userName,
//     required this.password,
//   });
//   @override
//   List<Object?> get props => [
//         userName,
//         password,
//       ];
// }

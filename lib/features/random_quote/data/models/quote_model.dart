import 'package:quetes/features/random_quote/domain/entities/quote_entity.dart';

class QuoteModel extends QuoteEntity{


  const QuoteModel({
    required super.content,
    required super.author,
    required super.id,
    required super.permaLink,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      content: json['quote'],
      author: json['author'],
      id: json['id'],
      permaLink: json['permalink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quote': content,
      'author': author,
      'id': id,
      'permalink': permaLink,
    };
  }
}

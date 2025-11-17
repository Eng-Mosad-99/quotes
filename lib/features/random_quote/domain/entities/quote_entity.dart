import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String content;
  final String author;
  final int id;
  final String permaLink;

  const QuoteEntity({
    required this.content,
    required this.author,
    required this.id,
    required this.permaLink,
  });
  @override
  List<Object?> get props => [
        content,
        author,
        id,
        permaLink,
      ];
}

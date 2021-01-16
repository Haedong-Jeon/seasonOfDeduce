import 'package:flutter/foundation.dart';

class Review {
  final String id;
  final String reviewTitle;
  final String reviewBody;
  final String bookTitle;
  final String uploader;
  final String genre;
  final DateTime reviewDate;

  const Review({
    @required this.id,
    @required this.reviewBody,
    @required this.reviewTitle,
    @required this.bookTitle,
    @required this.genre,
    @required this.uploader,
    @required this.reviewDate,
  });
}

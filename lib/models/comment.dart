import 'package:flutter/foundation.dart';

class Comment {
  final String id;
  final String targetReviewId;
  final String uploader;
  final String commentBody;
  final DateTime commentDate;

  const Comment({
    @required this.id,
    @required this.targetReviewId,
    @required this.uploader,
    @required this.commentBody,
    @required this.commentDate,
  });
}

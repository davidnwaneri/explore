import 'package:equatable/equatable.dart';

/// The domain object for a post.
///
/// The class extends [Equatable] so that it can be compared for equality
/// based on its properties.
class Post extends Equatable {
  ///
  const Post({
    required this.id,
    required this.title,
    required this.body,
  });

  /// The unique identifier for the post.
  final String id;

  /// The title of the post.
  final String title;

  /// The body of the post.
  final String body;

  @override
  List<Object> get props => [id];

  @override
  bool? get stringify => true;
}

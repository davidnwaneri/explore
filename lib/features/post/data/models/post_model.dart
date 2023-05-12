import 'package:explore/features/post/domain/entities/post_entity.dart';

/// A data object representing a post.
class PostData extends Post {
  /// Creates a [PostData] instance, that has a is-a relationship with [Post].
  const PostData({
    required super.id,
    required super.title,
    required super.body,
  });

  /// Creates a [PostData] instance from a JSON object.
  factory PostData.fromJson(Map<String, Object?> json) => PostData(
        id: json['id']! as String,
        title: json['title']! as String,
        body: json['body']! as String,
      );
}

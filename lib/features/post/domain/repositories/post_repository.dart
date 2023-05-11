import 'package:explore/core/typedefs.dart';
import 'package:explore/features/post/domain/entities/post_entity.dart';

/// An abstract interface that defines a contract for concrete implementations.
abstract interface class PostRepository {
  /// Fetches a list of [Post].
  FutureEitherPostList getPosts();
}

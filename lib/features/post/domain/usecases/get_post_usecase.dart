import 'package:explore/core/typedefs.dart';
import 'package:explore/core/usecase.dart';
import 'package:explore/features/post/domain/entities/post_entity.dart';
import 'package:explore/features/post/domain/repositories/post_repository.dart';

/// A class that encapsulates the logic for fetching list of [Post]
class GetPostListUseCase implements UseCase<List<Post>, NoParams> {
  /// A class that encapsulates the logic for fetching list of [Post]
  const GetPostListUseCase(this._repository);

  final PostRepository _repository;

  /// Fetches a list of [Post].
  @override
  FutureEitherPostList call(NoParams params) => _repository.getPosts();
}

import 'package:explore/core/failure.dart';
import 'package:explore/features/post/domain/entities/post_entity.dart';
import 'package:fpdart/fpdart.dart';

/// An alias for a function that returns a Future<Either<Failure, T>>.
typedef FutureEither<T> = Future<Either<Failure, T>>;

/// An alias for a function that returns a FutureEither<List<Post>>.
typedef FutureEitherPostList = FutureEither<List<Post>>;

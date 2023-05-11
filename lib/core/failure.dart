import 'package:equatable/equatable.dart';

/// A base class for all failures/exceptions.
///
/// Subclasses that extend this class will be
/// used to represent a specific failure in the app.
abstract base class Failure extends Equatable implements Exception {
  /// Cannot instantiate this class directly.
  const Failure(this.message);

  /// A message describing the failure.
  final String message;

  @override
  List<Object> get props => [message];

  @override
  String toString() => '$runtimeType(message: $message)';
}

/// A failure representing a failure to fetch posts.
final class FetchPostListFailure extends Failure {
  /// A failure representing a failure to fetch posts.
  const FetchPostListFailure(super.message);
}

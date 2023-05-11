import 'package:equatable/equatable.dart';
import 'package:explore/core/typedefs.dart';

/// A interface for all use cases.
///
/// Subclasses that implements this class will be callable.
/// The [call] method will be used to execute the use case.
abstract interface class UseCase<T, P> {
  /// Subclasses should implement this class.
  const UseCase();

  /// A method that will be called to execute the use case.
  FutureEither<T> call(P params);
}

/// A class that represents no parameters for a use case.
final class NoParams extends Equatable {
  /// Creates a [NoParams] instance, representing no parameters.
  const NoParams();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

import 'package:explore/core/failure.dart';
import 'package:explore/core/usecase.dart';
import 'package:explore/features/post/domain/entities/post_entity.dart';
import 'package:explore/features/post/domain/repositories/post_repository.dart';
import 'package:explore/features/post/domain/usecases/get_post_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_post_usecase_test.mocks.dart';

// Annotation which generates the get_post_usecase_test.mocks.dart library
// and the MockPostRepository class.
@GenerateNiceMocks([MockSpec<PostRepository>()])
void main() {
  late final MockPostRepository mockPostRepository;
  late final GetPostListUseCase usecase;

  setUp(() {
    mockPostRepository = MockPostRepository();
    usecase = GetPostListUseCase(mockPostRepository);
  });

  final tPostList = List.generate(
    2,
    (index) => Post(
      id: '$index',
      title: 'Title $index',
      body: 'Body $index',
    ),
  );

  test(
    'Get list of post when getPosts() is called',
    () async {
      // Arrange
      when(mockPostRepository.getPosts()).thenAnswer(
        (_) async => right<Failure, List<Post>>(tPostList),
      );
      // Act
      final result = await usecase(const NoParams());
      // Assert
      expect(result, right<Failure, List<Post>>(tPostList));
      verify(mockPostRepository.getPosts());
      verifyNoMoreInteractions(mockPostRepository);
    },
  );
}

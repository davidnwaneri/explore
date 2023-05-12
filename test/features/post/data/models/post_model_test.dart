import 'dart:convert';

import 'package:explore/features/post/data/models/post_model.dart';
import 'package:explore/features/post/domain/entities/post_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tPostData = PostData(
    id: '01',
    title: 'The Matrix',
    body: 'Welcome to the desert of the real.',
  );

  group('PostData', () {
    test('is a subclass of Post', () async {
      // assert
      expect(tPostData, isA<Post>());
    });

    test(
        'fromJson method returns a valid object containing all the '
        'properties in the JSON', () async {
      // arrange
      final tPostFixture = jsonDecode(fixture('post_data.json'));
      // act
      final result = PostData.fromJson(tPostFixture as Map<String, Object?>);
      // assert
      expect(result, tPostData);
    });
  });
}

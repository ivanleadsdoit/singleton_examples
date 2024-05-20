import 'package:singleton_examples/data/models/post_model.dart';

class PostsApi {
  // final _dio = Dio();

  Future<List<PostModel>> getPosts() async {
    return [
      PostModel(
        title: 'Title',
        description: 'Description',
        createdAt: DateTime.now(),
      ),
    ];
  }

  Future<void> createPost(PostModel post) async {}
  Future<void> updatePost(PostModel post) async {}
  Future<void> deletePost(PostModel post) async {}
}

import 'package:singleton_examples/data/api/posts_api.dart';
import 'package:singleton_examples/data/models/post_model.dart';

class PostsProvider {
  final _api = PostsApi();

  Future<List<PostModel>> getPosts() => _api.getPosts();

  Future<void> createPost(PostModel post) => _api.createPost(post);
  Future<void> updatePost(PostModel post) => _api.updatePost(post);
  Future<void> deletePost(PostModel post) => _api.deletePost(post);
}

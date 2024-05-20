import 'package:singleton_examples/providers/posts_provider.dart';
import 'package:singleton_examples/providers/user_provider.dart';

class ProviderInjector {
  ProviderInjector._();

  static final instance = ProviderInjector._();

  final userProvider = UserProvider();
  final postProvider = PostsProvider();
}

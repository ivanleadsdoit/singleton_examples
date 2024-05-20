import 'package:flutter/material.dart';
import 'package:singleton_examples/providers/provider_injector.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _userProvider = ProviderInjector.instance.userProvider;

  @override
  void initState() {
    super.initState();
    _userProvider.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

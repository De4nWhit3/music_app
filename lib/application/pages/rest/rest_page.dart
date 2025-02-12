import 'package:flutter/material.dart';
import 'package:music_app/core/page_config/page_config.dart';

class RestPage extends StatelessWidget {
  const RestPage({super.key});

  static final pageConfig = PageConfig(
    icon: const Icon(Icons.api),
    name: 'rest',
    child: const RestPage(),
    detailView: const RestPageDetailView(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RestPageDetailView extends StatelessWidget {
  const RestPageDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Rest API in progress'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:music_app/core/page_config/page_config.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static final pageConfig = PageConfig(
    icon: const Icon(Icons.person),
    name: 'about',
    child: const AboutPage(),
    detailView: const AboutPageDetailView(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class AboutPageDetailView extends StatelessWidget {
  const AboutPageDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('About programmer page in progress.'),
    );
  }
}

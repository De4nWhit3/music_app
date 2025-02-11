import 'package:flutter/material.dart';
import 'package:music_app/core/page_config/page_config.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static final pageConfig = PageConfig(
    icon: const Icon(Icons.person),
    name: 'about',
    child: const AboutPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

import 'package:flutter/material.dart';
import 'package:music_app/core/page_config/page_config.dart';

class RestPage extends StatelessWidget {
  const RestPage({super.key});

  static final pageConfig = PageConfig(
    icon: const Icon(Icons.api),
    name: 'rest',
    child: const RestPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

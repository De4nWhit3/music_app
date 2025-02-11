import 'package:flutter/material.dart';
import 'package:music_app/core/page_config/page_config.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  static final pageConfig = PageConfig(
    icon: const Icon(Icons.car_crash_outlined),
    name: 'cars',
    child: const CarsPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

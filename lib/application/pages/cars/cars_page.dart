import 'package:flutter/material.dart';
import 'package:music_app/core/page_config/page_config.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  static final pageConfig = PageConfig(
    icon: const Icon(Icons.car_crash_outlined),
    name: 'cars',
    child: const CarsPage(),
    detailView: const CarsPageDetailView(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CarsPageDetailView extends StatelessWidget {
  const CarsPageDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Car Game functionality in progress'),
    );
  }
}

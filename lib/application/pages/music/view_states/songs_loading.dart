import 'package:flutter/material.dart';

class SongsLoading extends StatelessWidget {
  const SongsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive();
  }
}

import 'package:flutter/material.dart';

class SongsError extends StatelessWidget {
  const SongsError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Text('Server error: Something went wrong. Please try again.'),
    );
  }
}

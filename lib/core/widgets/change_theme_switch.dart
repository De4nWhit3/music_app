import 'package:flutter/material.dart';
import 'package:music_app/core/services/theme_service.dart';
import 'package:provider/provider.dart';

class ChangeThemeSwitch extends StatelessWidget {
  const ChangeThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Provider.of<ThemeService>(context).isDarkModeOn,
      onChanged: (value) =>
          Provider.of<ThemeService>(context, listen: false).toggleDarkMode(),
    );
  }
}

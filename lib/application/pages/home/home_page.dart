import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/application/pages/about/about_page.dart';
import 'package:music_app/application/pages/cars/cars_page.dart';
import 'package:music_app/application/pages/music/music_page.dart';
import 'package:music_app/application/pages/rest/rest_page.dart';
import 'package:music_app/core/services/theme_service.dart';
import 'package:music_app/core/themes/default_dark_theme.dart';
import 'package:music_app/core/themes/default_light_theme.dart';
import 'package:music_app/core/widgets/change_theme_switch.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.tab})
      : currentIndex = tabs.indexWhere(
          (element) => element.name == tab,
        );

  final String tab;
  final int currentIndex;

  static final tabs = [
    MusicPage.pageConfig,
    RestPage.pageConfig,
    CarsPage.pageConfig,
    AboutPage.pageConfig
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NavigationDestination> destinations = HomePage.tabs
      .map(
        (e) => NavigationDestination(icon: e.icon, label: e.name),
      )
      .toList();

  // List<Color> primaryColors = const [
  //   Colors.white,
  //   Colors.pinkAccent,
  //   Colors.pink,
  // ];
  // List<Color> secondaryColors = const [
  //   Colors.blue,
  //   Colors.blueAccent,
  //   Colors.white,
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimateGradient(
        primaryColors: Provider.of<ThemeService>(context).isDarkModeOn
            ? DefaultDarkTheme.primaryColors
            : DefaultLightTheme.primaryColors,
        secondaryColors: Provider.of<ThemeService>(context).isDarkModeOn
            ? DefaultDarkTheme.secondaryColors
            : DefaultLightTheme.secondaryColors,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Dean\'s Playground'),
            centerTitle: true,
            actions: [const ChangeThemeSwitch()],
          ),
          body: AdaptiveLayout(
            secondaryNavigation:
                SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.mediumAndUp: SlotLayout.from(
                  key: const Key('secondary-nav'),
                  builder: (context) => AdaptiveScaffold.standardNavigationRail(
                        selectedIndex: widget.currentIndex,
                        onDestinationSelected: (index) =>
                            onDestinationSelected(index),
                        destinations: destinations
                            .map((e) => NavigationRailDestination(
                                icon: e.icon, label: e.icon))
                            .toList(),
                      )),
            }),
            bottomNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.small: SlotLayout.from(
                key: const Key('bottom-nav'),
                builder: (context) =>
                    AdaptiveScaffold.standardBottomNavigationBar(
                        currentIndex: widget.currentIndex,
                        onDestinationSelected: (index) =>
                            onDestinationSelected(index),
                        destinations: destinations),
              )
            }),
            body: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.smallAndUp: SlotLayout.from(
                  key: const Key('body-key'),
                  builder: (context) =>
                      HomePage.tabs[widget.currentIndex].child),
            }),
            secondaryBody: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.mediumAndUp: SlotLayout.from(
                key: const Key('secondary-body'),
                builder: (context) =>
                    HomePage.tabs[widget.currentIndex].detailView ??
                    const SizedBox.shrink(),
              )
            }),
          ),
        ),
      ),
    );
  }

  void onDestinationSelected(int index) =>
      context.go('/home/${HomePage.tabs[index].name}');
}

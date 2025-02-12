import 'package:flutter/material.dart';

class PageConfig {
  Icon icon;
  String name;
  Widget child;
  Widget? detailView;

  PageConfig(
      {required this.icon,
      required this.name,
      required this.child,
      Widget? detailView})
      : detailView = detailView ?? const Placeholder();
}

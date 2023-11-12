import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home('/'),
  settings('/settings'),
  word('/word'),
  alert('/alert'),
  favorites('/favorites'),
  ;

  const AppRoute(this.path);

  final String path;
}

extension AppRouteNavigation on AppRoute {
  void go(BuildContext context) => context.go(path);

  void push(BuildContext context) => context.push(path);
}

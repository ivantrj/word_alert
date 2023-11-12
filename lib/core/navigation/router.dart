import 'package:go_router/go_router.dart';
import 'package:scalable_flutter_app_starter/core/navigation/route.dart';
import 'package:scalable_flutter_app_starter/feature/alert/ui/page/alert_page.dart';
import 'package:scalable_flutter_app_starter/feature/favorites/ui/page/favorites_page.dart';
import 'package:scalable_flutter_app_starter/feature/home/ui/page/home_page.dart';
import 'package:scalable_flutter_app_starter/feature/settings/ui/page/settings_page.dart';
import 'package:scalable_flutter_app_starter/feature/word/ui/page/word_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoute.settings.path,
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: AppRoute.word.path,
      builder: (context, state) => const WordPage(),
    ),
    GoRoute(
      path: AppRoute.alert.path,
      builder: (context, state) => const AlertPage(),
    ),
    GoRoute(
      path: AppRoute.favorites.path,
      builder: (context, state) => const FavoritesPage(),
    ),
  ],
);

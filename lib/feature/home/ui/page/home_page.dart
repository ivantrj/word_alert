import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/extension/context.dart';
import 'package:scalable_flutter_app_starter/feature/alert/ui/page/alert_page.dart';
import 'package:scalable_flutter_app_starter/feature/favorites/ui/page/favorites_page.dart';
import 'package:scalable_flutter_app_starter/feature/settings/ui/page/settings_page.dart';
import 'package:scalable_flutter_app_starter/feature/word/ui/page/word_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final _tabs = <_HomeTab>[
    _HomeTab(
      label: 'Word',
      icon: Icons.menu_book,
      builder: (context) => const WordPage(),
    ),
    _HomeTab(
      label: 'Alert',
      icon: Icons.alarm,
      builder: (context) => const AlertPage(),
    ),
    _HomeTab(
      label: 'Favorites',
      icon: Icons.favorite,
      builder: (context) => const FavoritesPage(),
    ),
    _HomeTab(
      label: 'Info',
      icon: Icons.info,
      builder: (context) => const SettingsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Widget body;
    final Widget? bottomNavigationBar;
    final content = _tabs[_selectedIndex].builder(context);

    if (context.isWide) {
      body = Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() => _selectedIndex = index);
            },
            destinations: [
              for (final tab in _tabs)
                NavigationRailDestination(
                  label: Text(tab.label),
                  icon: Icon(tab.icon),
                ),
            ],
          ),
          Expanded(child: content),
        ],
      );
      bottomNavigationBar = null;
    } else {
      body = SafeArea(child: content);
      bottomNavigationBar = BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          for (final tab in _tabs)
            BottomNavigationBarItem(
              label: tab.label,
              icon: Icon(tab.icon),
            ),
        ],
      );
    }

    return Scaffold(
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

class _HomeTab {
  const _HomeTab({
    required this.label,
    required this.icon,
    required this.builder,
  });

  final String label;
  final IconData icon;
  final WidgetBuilder builder;
}

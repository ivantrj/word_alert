import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/app/style.dart';
import 'package:scalable_flutter_app_starter/core/navigation/router.dart';

class ScalableFlutterApp extends StatelessWidget {
  const ScalableFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Word Alert',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

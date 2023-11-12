import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/util/urls.dart';
import 'package:scalable_flutter_app_starter/feature/settings/ui/widget/app_version.dart';
import 'package:scalable_flutter_app_starter/feature/settings/ui/widget/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingsTile(
            icon: Icons.security_outlined,
            label: 'Privacy Policy',
            onTap: Urls.showPrivacyPolicy,
          ),
          SettingsTile(
            icon: Icons.fact_check_outlined,
            label: 'Terms of Service',
            onTap: Urls.showTermsOfService,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(16),
            child: AppVersion(),
          ),
        ],
      ),
    );
  }
}

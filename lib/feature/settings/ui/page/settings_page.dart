import 'package:flutter/material.dart';
import 'package:scalable_flutter_app_starter/core/util/urls.dart';
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
            icon: Icons.rate_review,
            label: 'Contact Us',
            onTap: Urls.showPrivacyPolicy,
          ),
          SettingsTile(
            icon: Icons.star_border,
            label: 'Review This App',
            onTap: Urls.showTermsOfService,
          ),
          SettingsTile(
            icon: Icons.ios_share_outlined,
            label: 'Spread The Word(Alert)',
            onTap: Urls.showTermsOfService,
          ),
          SizedBox(
            height: 20,
          ),
          SettingsTile(
            icon: Icons.developer_mode,
            label: 'About The Developer',
            onTap: Urls.showTermsOfService,
          ),
          SettingsTile(
            icon: Icons.apps,
            label: 'Our Other Apps',
            onTap: Urls.showTermsOfService,
          ),
          SettingsTile(
            icon: Icons.network_cell,
            label: 'Our Website',
            onTap: Urls.showTermsOfService,
          ),
          SettingsTile(
            icon: Icons.question_answer,
            label: 'FAQ',
            onTap: Urls.showTermsOfService,
          ),
        ],
      ),
    );
  }
}

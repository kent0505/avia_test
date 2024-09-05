import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/texts/text_r.dart';
import '../widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          const CustomAppbar('Settings', settings: true),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 12),
                const TextM('Account', fontSize: 14),
                const SizedBox(height: 12),
                SettingsTile(
                  id: 1,
                  title: 'Profile',
                  onPressed: () {
                    context.push('/settings/profile');
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  id: 2,
                  title: 'Notifications',
                  onPressed: () {
                    context.push('/settings/notifications');
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  id: 3,
                  title: 'Daily Bonus',
                  onPressed: () {
                    context.push('/settings/bonus');
                  },
                ),
                const SizedBox(height: 30),
                const SizedBox(height: 12),
                const TextM('Application', fontSize: 14),
                const SizedBox(height: 12),
                SettingsTile(
                  id: 4,
                  title: 'Contact Us',
                  onPressed: () {
                    context.push('/settings/contact');
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  id: 5,
                  title: 'Rate App',
                  onPressed: () {},
                ),
                const SizedBox(height: 30),
                const TextM('Terms', fontSize: 14),
                const SizedBox(height: 12),
                const _Tile(title: 'Terms of Use'),
                const SizedBox(height: 10),
                const _Tile(title: 'Privacy Policy'),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.grey2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            TextM(title, fontSize: 16),
          ],
        ),
      ),
    );
  }
}

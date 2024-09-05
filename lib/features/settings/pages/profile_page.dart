import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/texts/text_r.dart';
import '../widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Column(
        children: [
          CustomAppbar('Profile', settings: true),
          SizedBox(height: 12),
          ProfileCard(),
          SizedBox(height: 14),
          _Tile(title: 'Miles', amount: '7540'),
          SizedBox(height: 14),
          _Tile(title: 'Points', amount: '0'),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.title,
    required this.amount,
  });

  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.grey2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          TextM(title, fontSize: 16),
          const Spacer(),
          TextM(
            amount,
            fontSize: 16,
            color: title == 'Miles' ? AppColors.main : AppColors.yellow,
          ),
        ],
      ),
    );
  }
}

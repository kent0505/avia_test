import 'package:avia_test/features/home/widgets/home_card.dart';
import 'package:avia_test/features/home/widgets/status_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/utils.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/texts/text_r.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24 + getStatusBar(context)),
            const Row(
              children: [
                TextM(
                  'Hi, Guest',
                  fontSize: 14,
                  color: AppColors.main,
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: TextM(
                    'We have prepared statistics for you',
                    fontSize: 22,
                  ),
                ),
                const Spacer(),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  minSize: 40,
                  child: SvgPicture.asset('assets/settings.svg'),
                ),
              ],
            ),
            const SizedBox(height: 35),
            const StatusCard(),
            const SizedBox(height: 20),
            const Row(
              children: [
                HomeCard(title: 'Daily Bonus'),
                SizedBox(width: 20),
                HomeCard(title: 'My Flight'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

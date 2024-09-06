import 'package:flutter/material.dart';

import '../../core/utils.dart';
import '../../core/config/app_colors.dart';
import '../../core/widgets/custom_scaffold.dart';
import '../../core/widgets/textfields/txt_field.dart';
import '../../core/widgets/texts/text_r.dart';
import '../settings/widgets/profile_images.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final controller1 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 24 + getStatusBar(context)),
          const Row(
            children: [
              SizedBox(width: 20),
              TextM('Let\'s get acquainted!', fontSize: 22),
            ],
          ),
          const SizedBox(height: 24),
          const Row(
            children: [
              SizedBox(width: 20),
              TextM(
                'Select Profile Picture:',
                fontSize: 14,
                color: AppColors.main,
              ),
            ],
          ),
          const SizedBox(height: 10),
          ProfileImages(
            onImage: (p0) {},
          ),
          const SizedBox(height: 32),
          const Row(
            children: [
              SizedBox(width: 20),
              TextM(
                'Name:',
                fontSize: 14,
                color: AppColors.main,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TxtField(
              controller: controller1,
              hintText: 'Enter Your Name',
              onChanged: () {},
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils.dart';
import 'buttons/arrow_back_button.dart';
import 'texts/text_r.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24 + getStatusBar(context),
        bottom: 12,
      ),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            const SizedBox(width: 20),
            const ArrowBackButton(),
            const SizedBox(width: 20),
            Expanded(child: TextM(title, fontSize: 22)),
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              minSize: 40,
              child: SvgPicture.asset('assets/settings.svg'),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

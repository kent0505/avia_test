import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

double navBarHeight = 60;

int getCurrentTimestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

String formatTimestamp(int timestamp) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  String formattedDate = DateFormat('dd.MM.yyyy').format(date);
  return formattedDate;
}

String formatDateTime(DateTime date) {
  String formattedDate = DateFormat('dd.MM.yyyy').format(date);
  return formattedDate;
}

String formatTime(DateTime time) {
  DateFormat timeFormat = DateFormat('HH:mm');
  String formattedTime = timeFormat.format(time);
  return formattedTime;
}

DateTime convertToDateTime(String date) {
  try {
    return DateFormat('dd.MM.yyyy').parse(date);
  } catch (e) {
    return DateTime.now();
  }
}

double getStatusBar(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double getBottom(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}

bool getButtonActive(List<TextEditingController> controllers) {
  for (TextEditingController controller in controllers) {
    if (controller.text.isEmpty) return false;
  }
  return true;
}

int getRandomMiles() {
  final Random random = Random();
  int randomNumber = 800 + random.nextInt(1501 - 800);
  return randomNumber;
}

void precacheImages(BuildContext context) {
  List<String> imageAssets = [
    'assets/gift1.png',
    'assets/gift2.png',
  ];
  for (String assets in imageAssets) {
    precacheImage(AssetImage(assets), context);
  }
}

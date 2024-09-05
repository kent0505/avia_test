import 'package:shared_preferences/shared_preferences.dart';

bool onboard = true;
String profileName = '';

Future<void> getData() async {
  final prefs = await SharedPreferences.getInstance();
  // await prefs.remove('onboard');
  onboard = prefs.getBool('onboard') ?? true;
  profileName = prefs.getString('profileName') ?? '';
}

Future<void> saveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool('onboard', false);
}

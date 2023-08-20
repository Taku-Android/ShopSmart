import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  // Write DATA
  static Future<bool> saveUserThemeData({ required String saveKey , value}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(saveKey, value);
  }

  // Read Data
  static Future getUserThemeData({required String saveKey}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(saveKey);
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  // Write DATA
  static Future<bool> saveUserData({ required String saveKey , value}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(saveKey, value);
  }

  // Read Data
  static Future getUserData({required String saveKey}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(saveKey);
  }
}

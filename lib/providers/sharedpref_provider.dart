import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:provider/provider.dart';

class SharedPref extends ChangeNotifier {
  static const shaprefkey = 'label';
  static SharedPreferences? _preferences;

  // static Future getinstance() async {
  //   await SharedPreferences.getInstance();
  // }

  Future<String?> setcontroller(String text) async {
    print(text);
    _preferences = await SharedPreferences.getInstance();
    await _preferences?.setString(shaprefkey, text) == null ? '' : 'kosmk';
    String? weee = await _preferences?.getString(shaprefkey);
    notifyListeners();
    return weee;
  }

  Future<String?> getcontroller() async {
    _preferences = await SharedPreferences.getInstance();
    print(_preferences?.getString(shaprefkey));
    // ignore: await_only_futures
    String? weee = await _preferences?.getString(shaprefkey);
    //return weee;
    notifyListeners();
  }
}

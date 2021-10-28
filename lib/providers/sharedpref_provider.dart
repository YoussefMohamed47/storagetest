import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedPref extends ChangeNotifier {
  static const shaprefkey = 'label';
  static const flusecstor = 'key';

  static SharedPreferences? _preferences;
  final _storage = new FlutterSecureStorage();
  final options = IOSOptions(accessibility: IOSAccessibility.first_unlock);

  // static Future getinstance() async {
  //   await SharedPreferences.getInstance();
  // }

  Future<String?> sharedprefsetandget(String text) async {
    print(text);
    _preferences = await SharedPreferences.getInstance();
    await _preferences?.setString(shaprefkey, text);
    String? weee = await _preferences?.getString(shaprefkey);
    notifyListeners();
    return weee;
  }

  Future<String?> flsecstorage(String text) async {
    print(text);
    await _storage.write(key: flusecstor, value: text, iOptions: options);
    String? weee = await _storage.read(key: flusecstor);
    notifyListeners();
    return weee;
  }

  // Future<String?> getcontroller() async {
  //   _preferences = await SharedPreferences.getInstance();
  //   print(_preferences?.getString(shaprefkey));
  //   // ignore: await_only_futures
  //   String? weee = await _preferences?.getString(shaprefkey);
  //   //return weee;
  //   notifyListeners();
  // }
}

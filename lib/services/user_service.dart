
import 'package:drawer/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService{
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> login(String session) async{
    final SharedPreferences prefs = await _prefs;
    prefs.setString("sessionId",session);
  }

  Future<void> logout() async{
    final SharedPreferences prefs = await _prefs;
    // final User user = prefs.get("user") ?? User();
    prefs.remove("sessionId");
  }

  Future<bool> checkLoggedIn() async{
    final SharedPreferences prefs = await _prefs;
    return prefs.getString("sessionId").isNotEmpty;
  }
}
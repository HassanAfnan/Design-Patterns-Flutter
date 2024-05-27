import 'package:shared_preferences/shared_preferences.dart';

class SingletonClass {
  static SingletonClass? _singletonObject;
  SharedPreferences? _prefs;

  // Private constructor
  SingletonClass._internal();

  factory SingletonClass(){
    if(_singletonObject == null){
      _singletonObject = SingletonClass._internal();
    }
    return _singletonObject!;
  }

  // Initializes the shared preference object
  void intiPrefs() async { _prefs = await SharedPreferences.getInstance(); }

  // Methods for write data
  void setStringToPrefs(String key,String data) async { await _prefs!.setString(key,data); }
  void setStringListToPrefs(String key,List<String> data) async { await _prefs!.setStringList(key,data); }
  void setIntToPrefs(String key,int data) async { await _prefs!.setInt(key,data); }
  void setBoolToPrefs(String key,bool data) async { await _prefs!.setBool(key,data); }
  void setDoubleToPrefs(String key,double data) async { await _prefs!.setDouble(key,data); }

  // Methods for getting data
  String getStringFromPrefs(String key) { return _prefs!.getString(key)!; }
  List<String> getStringListFromPrefs(String key) { return _prefs!.getStringList(key)!; }
  int getIntFromPrefs(String key) { return _prefs!.getInt(key)!; }
  bool getBoolFromPrefs(String key) { return _prefs!.getBool(key)!; }
  double getDoubleFromPrefs(String key) { return _prefs!.getDouble(key)!; }

  // Methods for removing data
  void removePrefByKey(String key) async { await _prefs!.remove(key); }
  void removeAllPrefs()  async { await _prefs!.clear(); }

}
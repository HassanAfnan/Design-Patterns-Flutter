import 'package:flutter/material.dart';
import 'package:flutterdesignpatterns/design-patterns/singletonClass.dart';

class SingletonScreen extends StatefulWidget {
  const SingletonScreen({Key? key}) : super(key: key);

  @override
  State<SingletonScreen> createState() => _SingletonScreenState();
}

class _SingletonScreenState extends State<SingletonScreen> {
  final obj = SingletonClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                obj.intiPrefs();
                obj.setStringToPrefs("name", "Afnan");
                print("Result from string pref method ==> ${obj.getStringFromPrefs("name")}");
              }, child: Text("Set Prefs")),
            ],
          )
        ],
      ),
    );
  }
}

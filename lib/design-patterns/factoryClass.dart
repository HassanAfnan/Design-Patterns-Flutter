import 'package:flutterdesignpatterns/design-patterns/singletonClass.dart';

enum Roles { customer, driver, admin }

abstract class RolesFactory {
  factory RolesFactory(Roles role){
    switch(role){
      case Roles.customer:
        return Customer();
      case Roles.driver:
        return Driver();
      case Roles.admin:
        return Admin();
      default:
        throw Exception("No role found");
    }
  }
}

abstract class RoleClass implements RolesFactory {
  void selectRole();
}

class Customer implements RoleClass {
  final obj = SingletonClass();
  @override
  void selectRole() {
    // TODO: implement selectRole
    print("Customer role is selected");
    obj.intiPrefs();
    obj.setStringToPrefs("role", "Customer");
    print("Result from string pref method ==> ${obj.getStringFromPrefs("role")}");
  }
}

class Driver implements RoleClass {
  final obj = SingletonClass();
  @override
  void selectRole() {
    // TODO: implement selectRole
    print("Driver role is selected");
    obj.intiPrefs();
    obj.setStringToPrefs("role", "Driver");
    print("Result from string pref method ==> ${obj.getStringFromPrefs("role")}");
  }
}

class Admin implements RoleClass {
  final obj = SingletonClass();
  @override
  void selectRole() {
    // TODO: implement selectRole
    print("Admin role is selected");
    obj.intiPrefs();
    obj.setStringToPrefs("role", "Admin");
    print("Result from string pref method ==> ${obj.getStringFromPrefs("role")}");
  }
}
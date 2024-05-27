import 'package:flutter/material.dart';
import 'package:flutterdesignpatterns/design-patterns/factoryClass.dart';

class FactoryScreen extends StatefulWidget {
  const FactoryScreen({Key? key}) : super(key: key);

  @override
  State<FactoryScreen> createState() => _FactoryScreenState();
}

class _FactoryScreenState extends State<FactoryScreen> {
  final customer = RolesFactory(Roles.customer) as RoleClass;
  final driver = RolesFactory(Roles.driver) as RoleClass;
  final admin = RolesFactory(Roles.admin) as RoleClass;
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
                customer.selectRole();
              }, child:Text("Select Customer")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                driver.selectRole();
              }, child:Text("Select Driver")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                admin.selectRole();
              }, child:Text("Select Admin")),
            ],
          ),
        ],
      ),
    );
  }
}

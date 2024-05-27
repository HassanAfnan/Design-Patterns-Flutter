import 'package:flutter/material.dart';
import 'package:flutterdesignpatterns/design-patterns/BuilderClass.dart';

class BuilderScreen extends StatefulWidget {
  const BuilderScreen({Key? key}) : super(key: key);

  @override
  State<BuilderScreen> createState() => _BuilderScreenState();
}

class _BuilderScreenState extends State<BuilderScreen> {
  final builder = OrdersBuilder()
  ..id = "ordefw123"
  ..quantity = 2
  ..price = 20
  ..total = 40
  ..cashOnDelivery = true;
  Orders? order;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    order = Orders(builder);
    print("id ==> ${order!.id}");
    print("quantity ==> ${order!.quantity}");
    print("price ==> ${order!.price}");
    print("total ==> ${order!.total}");
    print("cashOnDelivery ==> ${order!.cashOnDelivery}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

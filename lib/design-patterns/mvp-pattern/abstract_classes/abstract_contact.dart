import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/models/contact_model.dart';

abstract class Contact {
  Future<List<Contacts>> fetchContacts();
}
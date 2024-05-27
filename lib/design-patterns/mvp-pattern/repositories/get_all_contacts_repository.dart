import 'dart:convert';
import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/abstract_classes/abstract_contact.dart';
import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/models/contact_model.dart';
import 'package:http/http.dart' as https;

import '../utils/fetch_data_exception.dart';

class GetAllContactsRepository implements Contact {
  // const is evaluated at compile-time.
  // The value must be known and fixed during compilation.
  // final is evaluated at runtime.
  // While it won't change after being set, its value is determined during the program's execution.
  static const url = "http://api.randomuser.me/?results=15";
  final JsonDecoder _decoder = JsonDecoder();

  @override
  Future<List<Contacts>> fetchContacts() {
    // TODO: implement fetchContacts
    return https.get(Uri.parse(url))
        .then((response){
      final String jsonBody = response.body;
      final int statusCode = response.statusCode;

      if(statusCode < 200 || statusCode >= 300 || jsonBody == null) {
        throw FetchDataException("Error while getting contacts [StatusCode:$statusCode, Error:${response.reasonPhrase}]");
      }

      final jsonDecodedBody = _decoder.convert(jsonBody);
      final List contactsList = jsonDecodedBody["results"];

      return contactsList.map((e) => Contacts.fromMap(e)).toList();
    });
  }
}
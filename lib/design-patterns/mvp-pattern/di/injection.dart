import '../abstract_classes/abstract_contact.dart';
import '../repositories/get_all_contacts_repository.dart';

class Injector {
  static final Injector _singleton = Injector._internal();

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  Contact get contactRepository {
    return GetAllContactsRepository();
  }
}
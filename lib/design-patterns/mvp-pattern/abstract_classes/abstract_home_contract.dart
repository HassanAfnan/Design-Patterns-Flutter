import '../models/contact_model.dart';

abstract class HomeContract {
  void showContractList(List<Contacts> items);
  void showError();
}
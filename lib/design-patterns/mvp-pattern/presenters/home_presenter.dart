import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/abstract_classes/abstract_home_contract.dart';
import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/di/injection.dart';
import '../abstract_classes/abstract_contact.dart';

class HomePresenter {
   late HomeContract _view;
   late Contact _repository;

   HomePresenter(this._view){
      _repository = Injector().contactRepository;
   }

   void loadContacts(){
      assert(_view != null);

      _repository.
         fetchContacts().
         then((value) => _view.showContractList(value)).
         catchError((error){
            print(error);
            _view.showError();
      });
   }

}
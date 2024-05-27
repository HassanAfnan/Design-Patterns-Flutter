import 'package:flutter/material.dart';
import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/abstract_classes/abstract_home_contract.dart';
import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/models/contact_model.dart';
import 'package:flutterdesignpatterns/design-patterns/mvp-pattern/presenters/home_presenter.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Model View Presenter"),
      ),
      body: ContactList(),
    );
  }
}

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> implements HomeContract {

  late HomePresenter _presenter;
  late List<Contacts> contacts;
  bool _isLoading = false;

  _ContactListState(){
    _presenter = HomePresenter(this);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isLoading = true;
    _presenter.loadContacts();
  }

  @override
  void showContractList(List<Contacts> items) {
    // TODO: implement showContractList
    setState(() {
      contacts = items;
      _isLoading = false;
    });
  }

  @override
  void showError() {
    // TODO: implement showError
    print("Error Occurred");
  }

  @override
  Widget build(BuildContext context) {
    late Widget widget;

    if(_isLoading) {
      widget = const Center(
          child:Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: CircularProgressIndicator()
          )
      );
    } else {
      widget = ListView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: _buildContactList()
      );
    }

    return widget;
  }

  List<_ContactListItem> _buildContactList() {
    return contacts.map((contact) =>
        _ContactListItem(
        contact: contact,
        onTap:   () {  }
    ))
        .toList();
  }
}

class _ContactListItem extends ListTile {

  _ContactListItem({ required Contacts contact,
    required GestureTapCallback onTap}) :
        super(
          title : Text(contact.name.first),
          subtitle: Text(contact.email),
          leading: CircleAvatar(
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(contact.image.large,height: 100,width: 100,))
          ),
          onTap: onTap
      );
}

class Contacts {
  late Name name;
  late String email;
  late String gender;
  late Location location;
  late BioImage image;
  late List<Phone> phones;
  Contacts(
      this.name,
      this.email,
      this.gender,
      this.location,
      this.image,
      this.phones
      );
  Contacts.fromMap(Map<String,dynamic> map):
      name = Name.fromMap(map["name"]),
      email = map["email"],
      gender = map["gender"],
      location = Location.fromMap(map["location"]),
      image = BioImage.fromMap(map["picture"]),
      phones = [
        Phone("Home", map["phone"]),
        Phone("Mobile", map["cell"])
      ];
}

// Image Class
class BioImage {
  late String large;
  late String medium;
  late String thumbnail;
  BioImage(
      this.large,
      this.medium,
      this.thumbnail
      );
  BioImage.fromMap(Map<String,dynamic> map):
      large = map["large"],
      medium = map["medium"],
      thumbnail = map["thumbnail"];
}

// Name Class
class Name {
  late String first;
  late String last;
  Name(this.first,this.last);
  Name.fromMap(Map<String,dynamic> map):
      first = map["first"],
      last = map["last"];
}

// Location Class
class Location {
  late Street street;
  late String city;
  Location(
      this.street,
      this.city
      );
  Location.fromMap(Map<String,dynamic> map):
      street = Street.fromMap(map["street"]),
      city = map["city"];
}

class Street {
  late int number;
  late String name;
  Street(
      this.number,
      this.name
      );
  Street.fromMap(Map<String, dynamic> map):
      number = map["number"],
      name = map["name"];
}

// Phone Class
class Phone {
  late String type;
  late String number;
  Phone(
      this.type,
      this.number
      );
}
// ignore_for_file: public_member_api_docs, sort_constructors_first
class Users {
  Users({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
  });
  late final int id;
  late final String name;
  late final String username;
  late final String email;
  late final Address address;
  late final String phone;
  late final String website;
  
  Users.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address = Address.fromJson(json['address']);
    phone = json['phone'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['username'] = username;
    _data['email'] = email;
    _data['address'] = address.toJson();
    _data['phone'] = phone;
    _data['website'] = website;
    return _data;
  }

  @override
  String toString() {
    return 'Users(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website)';
  }

  @override
  bool operator ==(covariant Users other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.username == username &&
      other.email == email &&
      other.address == address &&
      other.phone == phone &&
      other.website == website;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode;
  }

  Users copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
  }) {
    return Users(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
    );
  }
}

class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });
  late final String street;
  late final String suite;
  late final String city;
  late final String zipcode;
  
  Address.fromJson(Map<String, dynamic> json){
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['street'] = street;
    _data['suite'] = suite;
    _data['city'] = city;
    _data['zipcode'] = zipcode;
    return _data;
  }

  @override
  String toString() {
    return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode)';
  }

  @override
  bool operator ==(covariant Address other) {
    if (identical(this, other)) return true;
  
    return 
      other.street == street &&
      other.suite == suite &&
      other.city == city &&
      other.zipcode == zipcode;
  }

  @override
  int get hashCode {
    return street.hashCode ^
      suite.hashCode ^
      city.hashCode ^
      zipcode.hashCode;
  }

  Address copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
  }) {
    return Address(
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
    );
  }
}

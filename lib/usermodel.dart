
class UserModel {
  final String uid;
  final String name;
  final String email;
  final int age;
  final String address;

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.age,
    required this.address,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      age: map['age'],
      address: map['address'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'age': age,
      'address': address,
    };
  }
}

class User {
  int id;
  String name;
  String address;
  String? phone;

  User({
    required this.id,
    required this.name,
    required this.address,
    this.phone,
  });
}

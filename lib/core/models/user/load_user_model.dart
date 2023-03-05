class LoadUserModel {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  LoadUserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'avatar': avatar,
    };
  }

  factory LoadUserModel.fromMap(Map<String, dynamic> map) {
    return LoadUserModel(
      id: map['id']?.toInt() ?? 0,
      email: map['email'] ?? '',
      firstName: map['first_name'] ?? '',
      lastName: map['last_name'] ?? '',
      avatar: map['avatar'] ?? '',
    );
  }
}

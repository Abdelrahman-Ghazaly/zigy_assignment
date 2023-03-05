class UploadUserModel {
  final String name;
  final String job;
  final String id;
  final String createdAt;

  UploadUserModel({
    required this.name,
    required this.job,
    required this.id,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'job': job,
    };
  }

  factory UploadUserModel.fromMap(Map<String, dynamic> map) {
    return UploadUserModel(
      name: map['name'] ?? '',
      job: map['job'] ?? '',
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
    );
  }
}

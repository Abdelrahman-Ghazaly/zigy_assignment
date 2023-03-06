class UploadUserModel {
  final String name;
  final String job;
  late final String id;
  late final String createdAt;

  UploadUserModel.fromUserInput({
    required this.name,
    required this.job,
  });

  UploadUserModel.fromApi({
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
    return UploadUserModel.fromApi(
      name: map['name'] ?? '',
      job: map['job'] ?? '',
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
    );
  }
}

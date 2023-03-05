class UploadUserOdel {
  final String name;
  final String job;
  final String id;
  final String createdAt;

  UploadUserOdel({
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

  factory UploadUserOdel.fromMap(Map<String, dynamic> map) {
    return UploadUserOdel(
      name: map['name'] ?? '',
      job: map['job'] ?? '',
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
    );
  }
}

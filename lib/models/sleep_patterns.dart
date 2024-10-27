class SleepPattern {
  final String id;
  final String name;
  final String description;
  final String imageUrl;

  SleepPattern({
    required this.id, 
    required this.name, 
    required this.description, 
    required this.imageUrl
  });

  factory SleepPattern.fromJson(Map<String, dynamic> json) {
    return SleepPattern(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}
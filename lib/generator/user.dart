import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';
@JsonSerializable()
class User {
  final String name;
  final String email;
  final int age;
  User({
    required this.name,
    required this.email,
    required this.age,
  });

  factory User.fromMap(Map<String, dynamic> map) => _$UserFromJson(map);

  Map<String, dynamic> toMap() => _$UserToJson(this);
}
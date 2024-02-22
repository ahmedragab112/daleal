import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class Account {
  final String? firstName;
 final String? lastName;
  final String email;
  final String password;
  const Account({required this.email, required this.password, this.firstName, this.lastName});
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

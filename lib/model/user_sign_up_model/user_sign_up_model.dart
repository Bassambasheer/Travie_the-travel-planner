import 'package:json_annotation/json_annotation.dart';

part 'user_sign_up_model.g.dart';

@JsonSerializable()
class UserSignUpModel {
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "password")
  String? password;

  UserSignUpModel({this.username, this.email, this.password});
  UserSignUpModel.create(
      {required this.username, required this.email, required this.password});

  factory UserSignUpModel.fromJson(Map<String, dynamic> json) {
    return _$UserSignUpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserSignUpModelToJson(this);
}

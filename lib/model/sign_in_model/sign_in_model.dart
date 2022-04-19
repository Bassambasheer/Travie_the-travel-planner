import 'package:json_annotation/json_annotation.dart';

part 'sign_in_model.g.dart';

@JsonSerializable()
class SignInModel {
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "password")
  String? password;

  SignInModel({this.username, this.password});
  SignInModel.create({
    required this.username,
    required this.password
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return _$SignInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignInModelToJson(this);
}

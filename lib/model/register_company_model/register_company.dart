import 'package:json_annotation/json_annotation.dart';

part 'register_company.g.dart';

@JsonSerializable()
class RegisterCompany {
  @JsonKey(name: "companyName")
  String? companyName;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "password")
  String? password;

  RegisterCompany({
    this.companyName,
    this.location,
    this.email,
    this.password,
  });
  RegisterCompany.create({
    required this.companyName,
    required this.location,
    required this.email,
    required this.password,
  });

  factory RegisterCompany.fromJson(Map<String, dynamic> json) {
    return _$RegisterCompanyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterCompanyToJson(this);
}

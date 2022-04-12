// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterCompany _$RegisterCompanyFromJson(Map<String, dynamic> json) =>
    RegisterCompany(
      companyName: json['companyName'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$RegisterCompanyToJson(RegisterCompany instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'location': instance.location,
      'email': instance.email,
      'password': instance.password,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInModel _$SignInModelFromJson(Map<String, dynamic> json) => SignInModel(
      username: json['user'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$SignInModelToJson(SignInModel instance) =>
    <String, dynamic>{
      'user': instance.username,
      'password': instance.password,
    };
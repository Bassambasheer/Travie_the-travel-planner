// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddHotelModel _$AddHotelModelFromJson(Map<String, dynamic> json) =>
    AddHotelModel(
      hotelName: json['hotelName'] as String?,
      location: json['location'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$AddHotelModelToJson(AddHotelModel instance) =>
    <String, dynamic>{
      'hotelName': instance.hotelName,
      'location': instance.location,
      'price': instance.price,
    };

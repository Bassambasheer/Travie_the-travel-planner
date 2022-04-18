// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllHotelModel _$GetAllHotelModelFromJson(Map<String, dynamic> json) =>
    GetAllHotelModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AddHotelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GetAllHotelModelToJson(GetAllHotelModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

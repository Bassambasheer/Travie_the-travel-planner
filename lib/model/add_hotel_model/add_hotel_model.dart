import 'package:json_annotation/json_annotation.dart';

part 'add_hotel_model.g.dart';

@JsonSerializable()
class AddHotelModel {
  @JsonKey(name: "hotelName")
  String? hotelName;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "price")
  String? price;

  AddHotelModel({this.hotelName, this.location, this.price});

  AddHotelModel.create(
      {required this.hotelName, required this.location, required this.price});

  factory AddHotelModel.fromJson(Map<String, dynamic> json) {
    return _$AddHotelModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddHotelModelToJson(this);
}

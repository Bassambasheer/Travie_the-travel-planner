import 'package:json_annotation/json_annotation.dart';
import 'package:travie/model/add_hotel_model/add_hotel_model.dart';
part 'get_all_hotel_model.g.dart';

@JsonSerializable()
class GetAllHotelModel {
  @JsonKey(name: "data")
  List<AddHotelModel>? data;

  GetAllHotelModel({this.data = const []});

  factory GetAllHotelModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllHotelModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllHotelModelToJson(this);
}

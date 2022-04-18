import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:travie/Api/url.dart';
import 'package:travie/model/add_hotel_model/add_hotel_model.dart';
import 'package:travie/model/get_all_hotel_model/get_all_hotel_model.dart';
import 'package:travie/model/register_company_model/register_company.dart';
import 'package:travie/model/user_sign_up_model/user_sign_up_model.dart';

abstract class Api {
  Future<RegisterCompany?> createCompany(RegisterCompany value);
  Future<UserSignUpModel?> createUser(UserSignUpModel value);
  Future<AddHotelModel?> createHotel(AddHotelModel value);
  Future<List<AddHotelModel>> getallHotels();
}

class TravieDb extends Api {
  final dio = Dio();
  final url = Url();

  TravieDb() {
    dio.options =
        BaseOptions(baseUrl: url.baseUrl, responseType: ResponseType.plain);
  }

  @override
  Future<RegisterCompany?> createCompany(RegisterCompany value) async {
    final _result = await dio.post(url.registerCompany, data: value.toJson());
    final resultAsJson = jsonDecode(_result.data);
    return RegisterCompany.fromJson(resultAsJson);
  }

  @override
  Future<UserSignUpModel?> createUser(UserSignUpModel value) async {
    final _newuser = await dio.post(url.userSignUp, data: value.toJson());
    final _newuserAsJson = jsonDecode(_newuser.data);
    return UserSignUpModel.fromJson(_newuserAsJson);
  }

  @override
  Future<AddHotelModel?> createHotel(AddHotelModel value) async {
    final _newHotel = await dio.post(url.addHotel, data: value.toJson());
    final _newhotelasJson = jsonDecode(_newHotel.data);
    return AddHotelModel.fromJson(_newhotelasJson);
  }

  @override
  Future<List<AddHotelModel>> getallHotels() async {
    final _result = await dio.get(url.getallHotels);
    if (_result.data != null) {
      final _resultasJson = jsonDecode(_result.data);
      final getHotelResp = GetAllHotelModel.fromJson(_resultasJson);
      return getHotelResp.data!;
    } else {
      return [];
    }
  }
}

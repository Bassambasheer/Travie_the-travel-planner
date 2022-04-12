import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:travie/Api/url.dart';
import 'package:travie/model/register_company_model/register_company.dart';

abstract class Api {
  Future<RegisterCompany?> createCompany(RegisterCompany value);
}

class CompanyDb extends Api {
  final dio = Dio();
  final url = Url();

  @override
  Future<RegisterCompany?> createCompany(RegisterCompany value) async {
    final _result =
        await dio.post(url.baseUrl + url.registerCompany, data: value.toJson());
    final resultAsJson = jsonDecode(_result.data);
    return RegisterCompany.fromJson(resultAsJson);
  }
}

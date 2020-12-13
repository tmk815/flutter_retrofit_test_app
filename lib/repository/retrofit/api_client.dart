import 'package:dio/dio.dart';
import 'package:flutter_retrofit_test_app/repository/model/data.dart';
import 'package:flutter_retrofit_test_app/repository/retrofit/apis.dart';
import 'package:retrofit/http.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.github.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.users)
  Future<ResponseData> getUsers();
}
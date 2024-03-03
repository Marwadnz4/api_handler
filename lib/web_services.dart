import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:youtube_apis/models/user.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: "https://gorest.co.in/public/v2/")
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET("users")
  Future<List<User>> getAllUsers();

  @GET("users/{id}")
  Future<User> getUserById(@Path('id') int userId);

  @POST("users")
  Future<User> createUser(@Body() User newUser);

  @DELETE("users/{id}")
  Future<HttpResponse> deleteUser(@Path('id') int userId);

}

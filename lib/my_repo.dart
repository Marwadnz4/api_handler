import 'package:retrofit/dio.dart';
import 'package:youtube_apis/models/user.dart';
import 'package:youtube_apis/network_exceptions.dart';
import 'package:youtube_apis/web_services.dart';
import 'package:dartz/dartz.dart';

class MyRepo {
  final WebServices webServices;

  MyRepo(this.webServices);

  Future<Either<NetworkExceptions, List<User>>> getAllUsers() async {
    try {
      var response = await webServices.getAllUsers();
      return right(response);


    } catch (error) {
      return left(NetworkExceptions.getDioException(error));
    }
  }

  Future<Either<NetworkExceptions, User>> getUserById(int id) async {
    try {
      var response = await webServices.getUserById(id);
      return right(response);
    } catch (error) {
      
     return left(NetworkExceptions.getDioException(error));
    }
  }

  Future<Either<NetworkExceptions, User>> createUser(User user) async {
    try {
      var response = await webServices.createUser(user);
      return right(response);
    } catch (error) {
      return left(NetworkExceptions.getDioException(error));
    }
  }

  Future<Either<NetworkExceptions, HttpResponse>> deleteUser(int id) async {
    try {
      var response = await webServices.deleteUser(id);
      return right(response);
    } catch (error) {
      return left(NetworkExceptions.getDioException(error));
    }
  }
}

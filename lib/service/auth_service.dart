import 'package:dio/dio.dart';
import 'package:shopgood/view/compunent/api_path.dart';

class AuthService {
  final dio = new Dio();
  Future<dynamic> login(
      {required String phoneNumber, required String passWord}) async {
    try {
      final data = {"phoneNumber": phoneNumber, "password": passWord};
      final response = await dio.post(ApiPath.login, data: data);
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {
      print("====>>fail ${e}");
      throw e.toString();
    }
  }

  Future<dynamic> register(
      {required String phoneNumber,
      required String passWord,
      required String firstname,
      required String lastname}) async {
    try {
      final data = {
        "firstName": firstname,
        "lastName": lastname,
        "phoneNumber": phoneNumber,
        "password": passWord,
      };
      final response = await dio.post(ApiPath.register, data: data);
      if (response.statusCode == 201) {
        return response.data;
      }
    } catch (e) {
      print(" ==>>fail to register");
      rethrow;
    }
    return null;
  }
}

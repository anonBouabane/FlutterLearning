import 'package:flutter/material.dart';
import 'package:shopgood/service/auth_service.dart'; 

class AuthProvider extends ChangeNotifier {
  dynamic _userData;
  bool _isloading = false;
  AuthService authservice = AuthService();
  dynamic get userData => _userData;
  bool get isloading => _isloading;
  Future<void> login(
      {required String phoneNumber,required String passWord}) async {
    _isloading = true;
    try {
      final result =
          await authservice.login(phoneNumber: phoneNumber, passWord: passWord);
      if (result != null) {
        _userData = result;
        _isloading = false;
        print("success !!");
        notifyListeners();
      }
      ;
    } catch (e) {
      print("fail");
      throw e.toString();
    }
  }

  Future<void> register(
      {required String phoneNumber,
      required String passWord,
      required String firstname,
      required String lastname}) async {
    _isloading = true;
    try {
      final result = await authservice.register(
          phoneNumber: phoneNumber,
          passWord: passWord,
          firstname: firstname,
          lastname: lastname);
      if (result != null) {
        _userData = result;
        _isloading = false;
        print("success !!");
        notifyListeners();
      }
      ;
    } catch (e) {
      print(" ===> fail");
      throw e.toString();
    } finally {
      _isloading = false;
    }
  }
}

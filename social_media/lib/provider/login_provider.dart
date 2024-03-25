import 'package:flutter/material.dart';
import 'package:social_media/data/response/login_response.dart';
import 'package:social_media/data/services/login_service.dart';
import 'package:social_media/model/user.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';

  Future<LoginResponse> login() async {
    return LoginService(username: username, password: password).call();
  }
}

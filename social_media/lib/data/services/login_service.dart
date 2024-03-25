import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:social_media/config/app_config.dart';
import 'package:social_media/data/response/login_response.dart';

class LoginService {
  final String username;
  final String password;

  LoginService({required this.username, required this.password});

  Future<LoginResponse> call() async {
    final result = await http.post(Uri.parse('${AppConfig.baseUrl}/login'),
        body: jsonEncode({
          username: username,
          password: password,
        }));
    return LoginResponse.fromJson(jsonDecode(result.body)["data"]);
  }
}

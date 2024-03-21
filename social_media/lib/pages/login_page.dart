import 'dart:convert';
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:social_media/config/app_routes.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/user_provider.dart';

import '../model/user.dart';

const baseUrl = 'http://localhost:8000';

class LoginPage extends StatelessWidget {
  final loginRoute = '$baseUrl/login';
  var username = '';
  var password = '';
  // final usernameController = TextEditingController();
  // final passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                // const SizedBox(
                //   height: 68,
                // ),
                const Spacer(),
                const Text(
                  'Hi !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  'Login to continue',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  //
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Color.fromARGB(255, 138, 128, 128),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  // controller: passwordController,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Color.fromARGB(255, 138, 128, 128),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        // ignore: avoid_print
                        print('Forget is Clicked');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Forget Password')),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {
                        final user = await doLogin();
                        UserProvider.of(context)?.updateUser(user);
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.main);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                // const SizedBox(
                //   height: 100,
                // ),
                const Spacer(),
                const Text(
                  'Or sign-in with ',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print('Google is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'asserts/images/google png.png',
                          height: 16,
                          width: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Login with Google')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print('Facebook is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'asserts/images/facebook png.png',
                          height: 16,
                          width: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Login with Facebook')
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "Don't have an account ?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<User> doLogin() async {
    // final username = usernameController.text;
    // final password = passwordController.text;
    final body = {'username': username, 'password': password};
    final response =
        await http.post(Uri.parse(loginRoute), body: jsonEncode(body));

    if (response.statusCode == 200) {
      print(response.body);
      final json = jsonDecode(response.body);
      final user = User.fromJson(json['data']);
      return user;
    } else {
      print("you have an error");
      throw Exception("Error");
    }
  }
}

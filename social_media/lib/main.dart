import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 53, 84, 134),
        body: Column(
          children: [
            const Text('Hi !'),
            const Text('Login to continue'),
            const TextField(
              decoration: InputDecoration(hintText: 'UserName'),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
            TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Forget is Clicked');
                },
                child: const Text('Forget Password')),
            ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Login is clicked');
                },
                child: const Text('Log in')),
            const Text('Or sign in with '),
            ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Google is clicked');
              },
              child: Row(
                children: [
                  Image.asset(
                    'asserts/images/google png.png',
                    height: 16,
                    width: 16,
                  ),
                  const Text('Login with Google')
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Facebook is clicked');
              },
              child: Row(
                children: [
                  Image.asset(
                    'asserts/images/facebook png.png',
                    height: 16,
                    width: 16,
                  ),
                  const Text('Login with Facebook')
                ],
              ),
            ),
            Row(
              children: [
                const Text("Don't have an account ?"),
                TextButton(onPressed: () {}, child: const Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

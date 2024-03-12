import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 84, 134),
      body: Column(
        children: [
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
          const TextField(
            decoration: InputDecoration(
              hintText: 'User Name',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              filled: true,
              fillColor: Colors.white,
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
            width: 250,
            child: ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Login is clicked');
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
    );
  }
}

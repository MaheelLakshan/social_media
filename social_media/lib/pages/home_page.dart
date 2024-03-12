import 'package:flutter/material.dart';
import 'package:social_media/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('5min flutter'),
        centerTitle: false,
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'asserts/temp/Final.jpg',
          width: 60,
          height: 60,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text('Maheel Lakshan'),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 100; i++) {
      users.add(_userItem());
    }
    return users;
  }
}

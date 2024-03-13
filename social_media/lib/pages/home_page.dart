import 'package:flutter/material.dart';
import 'package:social_media/components/post_item.dart';
import 'package:social_media/styles/app_colors.dart';
import 'package:social_media/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: const Text('5min flutter'),
          centerTitle: false,
          actions: [
            Icon(Icons.location_on_outlined),
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        }));
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:social_media/components/post_item.dart';
import 'package:social_media/components/toolbar.dart';
import 'package:social_media/config/app_routes.dart';
import 'package:social_media/styles/app_colors.dart';
import 'package:social_media/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: ToolBar(
          title: '5min Flutter',
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.nearby);
              },
              icon: const Icon(Icons.my_location),
            )
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 40,
            );
          },
        ));
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}

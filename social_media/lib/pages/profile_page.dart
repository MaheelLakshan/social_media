import 'package:flutter/material.dart';
import 'package:social_media/components/toolbar.dart';
import 'package:social_media/components/user_avatar.dart';
import 'package:social_media/config/app_routes.dart';
import 'package:social_media/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print('object');
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('Log Out'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 150,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Maheel Lakshan",
            style: AppText.header2,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Faculty of Engineering',
            style: AppText.subtitle3,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    "100",
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: const [
                  Text(
                    "30",
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: const [
                  Text(
                    "800",
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              )
            ],
          ),
          const Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}

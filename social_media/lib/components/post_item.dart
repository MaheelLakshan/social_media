import 'package:flutter/material.dart';
import 'package:social_media/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'asserts/temp/Final.jpg',
                width: 60,
                height: 60,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Image.asset(
            'asserts/temp/Final.jpg',
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "something about the picture. you have to make your own decision for the success of your life",
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}

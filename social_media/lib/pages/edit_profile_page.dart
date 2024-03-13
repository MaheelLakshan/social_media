import 'package:flutter/material.dart';
import 'package:social_media/components/app_text_field.dart';
import 'package:social_media/components/toolbar.dart';
import 'package:social_media/config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppString.editProfile),
      body: Column(
        children: [
          AppTextField(hint: AppString.firstName),
          AppTextField(hint: AppString.lastName),
          AppTextField(hint: AppString.phoneNumber),
          AppTextField(hint: AppString.location),
        ],
      ),
    );
  }
}

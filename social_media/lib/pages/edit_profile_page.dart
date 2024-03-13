import 'package:flutter/material.dart';
import 'package:social_media/components/app_text_field.dart';
import 'package:social_media/components/toolbar.dart';
import 'package:social_media/config/app_strings.dart';
import 'package:social_media/styles/app_colors.dart';

import '../components/user_avatar.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppString.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAvatar(size: 120),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 34),
              AppTextField(hint: AppString.firstName),
              const SizedBox(height: 14),
              AppTextField(hint: AppString.lastName),
              const SizedBox(height: 14),
              AppTextField(hint: AppString.phoneNumber),
              const SizedBox(height: 14),
              AppTextField(hint: AppString.location),
              const SizedBox(height: 14),
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.fieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Gender'),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            title: Text('Male'),
                            value: Gender.male,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            title: Text('Female'),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.female,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            title: Text('Other'),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.other,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

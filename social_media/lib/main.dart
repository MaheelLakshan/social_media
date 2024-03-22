import 'package:flutter/material.dart';
import 'package:social_media/config/app_routes.dart';
import 'package:social_media/pages/edit_profile_page.dart';
import 'package:social_media/pages/home_page.dart';
import 'package:social_media/pages/login_page.dart';
import 'package:social_media/pages/main_page.dart';
import 'package:social_media/provider/app_repo.dart';
import 'package:social_media/styles/app_colors.dart';
import 'package:social_media/user_provider.dart';
import 'package:provider/provider.dart';

import 'model/user.dart';

void main() {
  runApp(ChangeNotifierProvider<AppRepo>, const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.backgroundColor,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}

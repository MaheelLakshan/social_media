import 'package:flutter/material.dart';
import 'package:social_media/config/app_routes.dart';
import 'package:social_media/provider/app_repo.dart';
import 'package:social_media/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AppRepo>(
    create: (context) => AppRepo(),
    child: const MyApp(),
  ));
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

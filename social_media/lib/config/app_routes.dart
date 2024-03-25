import 'package:provider/provider.dart';
import 'package:social_media/pages/nearby_page.dart';
import 'package:social_media/provider/login_provider.dart';

import '../model/user.dart';
import '../pages/edit_profile_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: LoginPage(),
        ),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
}

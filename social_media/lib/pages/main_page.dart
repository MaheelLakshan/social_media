import 'package:flutter/material.dart';
import 'package:social_media/pages/home_page.dart';
import 'package:social_media/pages/profile_page.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:social_media/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              // icon: SvgPicture.asset('asserts/svg/home.svg'), label: 'Home'),
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add post',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Users'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: const Text('Favorite')),
    Center(child: const Text('Add Post')),
    Center(child: const Text('Message')),
    ProfilePage(),
  ];
}

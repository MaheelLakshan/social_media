import 'package:flutter/material.dart';
import 'package:social_media/model/user.dart';
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
  Menu currentIndex = Menu.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex.index,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //         // icon: SvgPicture.asset('asserts/svg/home.svg'), label: 'Home'),
      //         icon: Icon(Icons.home),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite), label: 'Favorite'),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.add,
      //       ),
      //       label: 'Add post',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.message,
      //       ),
      //       label: 'Message',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_box), label: 'Users'),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   backgroundColor: Colors.blueGrey,
      // ),
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

enum Menu { home, favorite, add, message, account }

class MyBottomNavigation extends StatelessWidget {
  final currentIndex;
  final ValueChanged<Menu> onTap;
  const MyBottomNavigation({super.key, this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: IconButton(
                    onPressed: () => onTap(Menu.home),
                    color: Colors.black,
                    icon: Icon(Icons.home,
                        color: currentIndex == Menu.home.index
                            ? Colors.black
                            : Colors.black.withOpacity(0.3)),
                  )),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menu.favorite),
                      icon: Icon(Icons.favorite,
                          color: currentIndex == Menu.favorite.index
                              ? Colors.black
                              : Colors.black.withOpacity(0.3)),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menu.message),
                      icon: Icon(Icons.message,
                          color: currentIndex == Menu.message.index
                              ? Colors.black
                              : Colors.black.withOpacity(0.3)),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menu.account),
                      icon: Icon(Icons.account_box,
                          color: currentIndex == Menu.account.index
                              ? Colors.black
                              : Colors.black.withOpacity(0.3)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menu.add),
              child: Container(
                width: 64,
                height: 64,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: currentIndex == Menu.add.index
                      ? Colors.black
                      : Colors.black.withOpacity(0.3),
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

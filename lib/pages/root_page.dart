import 'package:flutter/material.dart';
import 'package:realestate_ui/pages/chat_page.dart';
import 'package:realestate_ui/pages/favorite_page.dart';
import 'package:realestate_ui/pages/home_page.dart';
import 'package:realestate_ui/pages/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> _pages = [
    HomePage(),
    ChatPage(),
    FavoritePage(),
    ProfilePage(),
  ];
  int _selectedIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: _pages.elementAt(_selectedIndex),
          height: height,
          width: double.infinity,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _selectedPage,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

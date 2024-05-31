import 'package:flutter/material.dart';
import 'package:shop/resources/assets.gen.dart';
import 'package:shop/src/screen/home/home_screen.dart';

class AppMainLayout extends StatefulWidget {
  static const String routeName = '/';
  const AppMainLayout({super.key});

  @override
  State<AppMainLayout> createState() => _AppMainLayoutState();
}

class _AppMainLayoutState extends State<AppMainLayout> {
  int _selectedIndex = 0;
  final List<BottomNavigationBarItem> _bottomBarItems = [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Assets.icons.shopSolid
          .svg(width: 18, height: 18, color: Colors.grey[400]),
      activeIcon: Assets.icons.shopSolid
          .svg(width: 18, height: 18, color: Colors.black),
    ),
    BottomNavigationBarItem(
      label: 'Favorite',
      icon: Assets.icons.heartSolid
          .svg(width: 18, height: 18, color: Colors.grey[400]),
      activeIcon: Assets.icons.heartSolid
          .svg(width: 18, height: 18, color: Colors.black),
    ),
    BottomNavigationBarItem(
      label: 'Cart',
      backgroundColor: Colors.transparent,
      icon: Assets.icons.cartShoppingSolid
          .svg(width: 18, height: 18, color: Colors.grey[400]),
      activeIcon: Assets.icons.cartShoppingSolid
          .svg(width: 18, height: 18, color: Colors.black),
    ),
    BottomNavigationBarItem(
      label: 'Profile',
      backgroundColor: Colors.transparent,
      icon: Assets.icons.circleUserSolid
          .svg(width: 18, height: 18, color: Colors.grey[400]),
      activeIcon: Assets.icons.circleUserSolid
          .svg(width: 18, height: 18, color: Colors.black),
    ),
  ];

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: _bottomBarItems,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

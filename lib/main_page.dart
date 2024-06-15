import 'package:flutter/material.dart';
import 'package:ig_flutter_ui/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    const Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        'Reels',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        'Shop',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        'Acccount',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        selectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_home.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_search.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_reels.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: "Reels"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ic_shop.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: "Shop"),
          const BottomNavigationBarItem(
              // icon: Icon(_selectedIndex == 4
              //     ? Icons.person_2
              //     : Icons.person_2_outlined),
              icon: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/150?img=10'),
                ),
              ),
              label: "Account"),
        ],
      ),
    );
  }
}

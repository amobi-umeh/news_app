import 'package:flutter/material.dart';
import 'package:vacation_app/utilities/app_style.dart';
import 'package:vacation_app/utilities/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vacation_app/views/notification_screen.dart';
import 'package:vacation_app/views/author_article.dart';
import 'package:vacation_app/views/book_mark_screen.dart';
import 'package:vacation_app/views/home_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vacation_app/views/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  List pages = [
    homeScreen(),
    BookmarkScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedindex == 0
                ? SvgPicture.asset('lib/assets/home_selected.svg')
                : SvgPicture.asset('lib/assets/home_unselected.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedindex == 1
                ? SvgPicture.asset('lib/assets/bookmark_selected.svg')
                : SvgPicture.asset('lib/assets/bookmark_unselected.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedindex == 2
                ? SvgPicture.asset('lib/assets/bell_selected.svg')
                : SvgPicture.asset('lib/assets/bell_unselected.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedindex == 3
                ? SvgPicture.asset('lib/assets/profile_selected.svg')
                : SvgPicture.asset('lib/assets/profile_unselected.svg'),
            label: '',
          ),
        ],
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
      ),
    );
  }
}

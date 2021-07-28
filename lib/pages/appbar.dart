//import 'dart:html';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:pages_familiar/pages/account_page.dart';
import 'package:pages_familiar/pages/favorite_page.dart';
import 'package:pages_familiar/pages/homeonbar.dart';
import 'package:pages_familiar/pages/chat.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [BlogPage(),  ShoppingPage(), AccountPage(),];
  
    int _selectedIndex = 0;
  
    void _onPageChanged(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  
    void _onItemTapped(int selectedIndex) {
      _pageController.jumpToPage(selectedIndex);
    }
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _selectedIndex == 0 ? Colors.green[400] : Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: _selectedIndex == 0 ? Colors.green[400] : Colors.grey,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: _selectedIndex == 1 ? Colors.green[400] : Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'score',
                  style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.green[400] : Colors.grey,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: _selectedIndex == 2 ? Colors.green[400] : Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'stats',
                  style: TextStyle(
                    color: _selectedIndex == 2 ? Colors.green[400] : Colors.grey,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: _selectedIndex == 3 ? Colors.green[400] : Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'stats',
                  style: TextStyle(
                    color: _selectedIndex == 3 ? Colors.green[400] : Colors.grey,
                  ),
                )),
          ],
        ),
      );
    }
  
   
}

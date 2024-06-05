import 'package:flutter/material.dart';
import 'package:flutter_pro_4/Screens/Account_Screen.dart';
import 'package:flutter_pro_4/Screens/Home_Screen.dart';
import 'package:flutter_pro_4/Screens/Nav_Course_Screen.dart';
import 'package:flutter_pro_4/Screens/Watchlist_Screen.dart';

class Navbar_Widget extends StatefulWidget {
  const Navbar_Widget({super.key});

  @override
  State<Navbar_Widget> createState() => _Navbar_WidgetState();
}

class _Navbar_WidgetState extends State<Navbar_Widget> {

  int _selectedScreen = 0;

  final _screen = [
    Home_Screen(),
    Nav_Course_Screen(),
    Watchlist_Screen(),
    Account_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedScreen],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          iconSize: 25,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500
          ),
          selectedFontSize: 16,
          unselectedItemColor: Colors.grey,

          currentIndex: _selectedScreen,
          onTap: (index) {
            setState(() {
              _selectedScreen = index;
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Course"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Watchlist"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
        ),
    );
  }
}

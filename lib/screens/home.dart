import 'package:flutter/material.dart';
import 'package:fluuter_app_1/screens/movies.dart';
import 'package:fluuter_app_1/screens/profile.dart';
import 'package:fluuter_app_1/screens/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _totalPage = [
    MoviesPage(),
    wishListPage(),
    ProfilePage(),
  ];
  int _currentIndex = 0;
  void setCurrentIndex(int val) {
    setState(() {
      _currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _totalPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: setCurrentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: ("Кино"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ("Дуртай"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Профайл'),
          ),
        ],
      ),
    );
  }
}

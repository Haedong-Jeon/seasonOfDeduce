import 'package:flutter/material.dart';
import 'package:seasonOfDeduce/screens/bookRecommandScreen.dart';
import 'package:seasonOfDeduce/screens/readReviewScreen.dart';
import 'package:seasonOfDeduce/screens/writeScreen.dart';

class TabControlSCreen extends StatefulWidget {
  static const String routeName = './screens/tabControlScreen';
  @override
  _TabControlSCreenState createState() => _TabControlSCreenState();
}

class _TabControlSCreenState extends State<TabControlSCreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': WriteScreen(),
      'title': '리뷰 쓰기',
    },
    {
      'page': ReadReviewScreen(),
      'title': '리뷰 읽기',
    },
    {
      'page': BookRecommandScreen(),
      'title': '추천 도서',
    },
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.indigoAccent,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.keyboard),
            title: Text(
              _pages[0]['title'],
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.book),
            title: Text(
              _pages[1]['title'],
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.thumb_up),
            title: Text(
              _pages[2]['title'],
            ),
          ),
        ],
      ),
    );
  }
}

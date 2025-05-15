import 'package:flutter/material.dart';
import 'package:football_app/pages/calendar_page.dart';
import 'package:football_app/pages/home_page.dart';
import 'package:football_app/pages/medals_page.dart';
import 'package:football_app/pages/more_page.dart';
import 'package:football_app/pages/news_page.dart';
import 'package:material_symbols_icons/symbols.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int selectedIndex = 0;

  final List<Widget> widgetOptions = const [
    HomePage(),
    CalendarPage(),
    MedalsPage(),
    NewsPage(),
    MorePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Symbols.home_filled_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.calendar_month_rounded),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.trophy_rounded),
            label: 'Medals',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_square_rounded),
            label: 'More',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}

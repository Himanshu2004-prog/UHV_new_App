import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:uhv_app/screens/homePage.dart';
import 'package:uhv_app/screens/infoPage.dart';
import 'package:uhv_app/screens/profilePage.dart';

import '../src/colors.dart';

class AppBottom extends StatefulWidget {
  const AppBottom({Key? key}) : super(key: key);

  @override
  State<AppBottom> createState() => _AppBottomState();
}

class _AppBottomState extends State<AppBottom> {
  int selectedPageIndex = 0;
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  late List<Widget> _widgetsOptions;
  static List pageNames = ["HomePage", "InfoPage", "ProfilePage"];

  @override
  void initState() {
    analytics.setAnalyticsCollectionEnabled(true);
    super.initState();
    _widgetsOptions = <Widget>[
      homePage(analytics: analytics),
      const infoPage(),
      const profilePage(),
    ];
  }

  void onItemTapped(int index) {
    analytics.logEvent(
        name: "pages_tracked", parameters: {"page_name": pageNames[index]});
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor,
        title: const Text(
          "UHV",
          style: TextStyle(color: AppBarTextColor),
        ),
      ),
      body: Center(child: _widgetsOptions[selectedPageIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: selectedPageIndex,
        elevation: 10,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            activeIcon: Icon(Icons.info),
            label: "Info",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AppBottom(),
  ));
}

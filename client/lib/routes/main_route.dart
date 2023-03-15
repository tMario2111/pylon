import 'package:flutter/material.dart';

import '../pages/chats_page.dart';
import '../pages/people_page.dart';

import '../constants.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({super.key});

  @override
  State<StatefulWidget> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  var _currentPageIndex = 0;

  final _pages = const [
    ChatsPage(),
    PeoplePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainBackgroundColor,
      bottomNavigationBar: NavigationBar(
        height: 60.0,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        surfaceTintColor: Colors.black,
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        selectedIndex: _currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: "People",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      body: _pages[_currentPageIndex],
    );
  }
}

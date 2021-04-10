import 'package:bottom_navigation_five_package/pages/add.dart';
import 'package:bottom_navigation_five_package/pages/discovery.dart';
import 'package:bottom_navigation_five_package/pages/home.dart';
import 'package:bottom_navigation_five_package/pages/message.dart';
import 'package:bottom_navigation_five_package/pages/profile.dart';
import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  int _currentIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Discovery(),
    Add(),
    Message(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: CircleBottomNavigation(
        tabs: [
          TabData(icon: Icons.home, title: 'Home'),
          TabData(icon: Icons.map, title: 'Discovery'),
          TabData(icon: Icons.add, title: 'Add'),
          TabData(icon: Icons.message, title: 'Message'),
          TabData(icon: Icons.people, title: 'Profile'),
        ],
        initialSelection: _currentIndex,
        onTabChangedListener: _changeItem,

      ),
    );
  }
  void _changeItem(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}

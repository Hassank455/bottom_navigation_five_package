import 'package:bottom_navigation_five_package/pages/add.dart';
import 'package:bottom_navigation_five_package/pages/discovery.dart';
import 'package:bottom_navigation_five_package/pages/home.dart';
import 'package:bottom_navigation_five_package/pages/message.dart';
import 'package:bottom_navigation_five_package/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Curved extends StatefulWidget {
  @override
  _CurvedState createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {

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
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
        index: _currentIndex,
        onTap: _changeItem,
        backgroundColor: Colors.red,
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
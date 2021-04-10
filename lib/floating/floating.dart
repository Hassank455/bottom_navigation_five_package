import 'package:bottom_navigation_five_package/pages/add.dart';
import 'package:bottom_navigation_five_package/pages/discovery.dart';
import 'package:bottom_navigation_five_package/pages/home.dart';
import 'package:bottom_navigation_five_package/pages/message.dart';
import 'package:bottom_navigation_five_package/pages/profile.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
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
      bottomNavigationBar: FloatingNavbar(
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.map, title: 'Discovery'),
          FloatingNavbarItem(icon: Icons.add, title: 'Add'),
          FloatingNavbarItem(icon: Icons.message, title: 'Message'),
          FloatingNavbarItem(icon: Icons.people, title: 'Profile'),
        ],
        currentIndex: _currentIndex,
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

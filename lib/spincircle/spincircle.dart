import 'package:bottom_navigation_five_package/pages/add.dart';
import 'package:bottom_navigation_five_package/pages/discovery.dart';
import 'package:bottom_navigation_five_package/pages/home.dart';
import 'package:bottom_navigation_five_package/pages/message.dart';
import 'package:bottom_navigation_five_package/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class Spincircle extends StatefulWidget {
  @override
  _SpincircleState createState() => _SpincircleState();
}

class _SpincircleState extends State<Spincircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(items: [
            SCBottomBarItem(icon: Icons.add, onPressed: () {}),
            SCBottomBarItem(icon: Icons.notifications, onPressed: () {}),
            SCBottomBarItem(icon: Icons.notifications, onPressed: () {}),
            SCBottomBarItem(icon: Icons.notifications, onPressed: () {}),
          ], circleItems: [
            SCItem(icon: Icon(Icons.add), onPressed: () {}),
            SCItem(icon: Icon(Icons.add), onPressed: () {}),
            SCItem(icon: Icon(Icons.add), onPressed: () {}),
          ], circleColors: [
            Colors.white,
            Colors.orange,
            Colors.redAccent
          ]),
          child: Container()),
    );
  }
}

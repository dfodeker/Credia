import 'dart:ui' as dartUI;

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _currentIndex == 0 ? Text('Credia') : Text('Not Credia'),
        backgroundColor: const dartUI.Color.fromARGB(255, 27, 76, 153),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is page ${_currentIndex + 1}',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.wallet),
              label: 'Accounts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.creditCard,
              ),
              label: 'Virtual cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.squarePollVertical),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dollarSign),
              label: 'Payments',
            ),
          ],
          selectedItemColor: dartUI.Color.fromARGB(255, 35, 98, 199),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}

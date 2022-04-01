import 'dart:ui' as dartUI;
import 'package:credia_app/accounts_page.dart';
import 'package:credia_app/virtualcards_page.dart';
import 'package:credia_app/payments_page.dart';
import 'package:credia_app/transactions_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credia',
      theme: ThemeData(
        primaryColor: const dartUI.Color.fromARGB(255, 27, 76, 153),
        scaffoldBackgroundColor: dartUI.Color.fromARGB(255, 231, 231, 232),
      ),
      home: MyHomePage(),
    );
  }
}

//change background color
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          Title(),
          FrostedGlass(),
          BigCircle(),
          SmallCircle(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 50.0,
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )),
        ),
        TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            child: Text(
              'Sign up',
              style: TextStyle(color: theme.primaryColor, fontSize: 18.0),
            ))
      ],
    );
  }
}

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BackdropFilter(
        filter: dartUI.ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
        child: Container(
          height: 400.0,
          width: 500.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150.0,
              child: const ButtonSection(),
            ),
          ),
        ),
      ),
    );
  }
}

class BigCircle extends StatelessWidget {
  const BigCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 405.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SmallCircle extends StatelessWidget {
  const SmallCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 255.0),
        child: Container(
          height: 150.0,
          width: 150.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: dartUI.Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //change background color
    return const Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child: Text(
          'Welcome to Credia',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List _children = [
    AccountsPage(),
    VirtualCardsPage(),
    TransactionsPage(),
    PaymentsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${_currentIndex + 1}',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: _children[_currentIndex],
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         'This is page ${_currentIndex + 1}',
      //         style: TextStyle(fontSize: 24.0),
      //       ),
      //     ],
      //   ),
      // ),
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

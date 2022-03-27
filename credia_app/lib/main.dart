import 'dart:ui' as dartUI;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credia',
      theme: ThemeData(
        primaryColor: dartUI.Color.fromARGB(255, 30, 117, 199),
        scaffoldBackgroundColor: dartUI.Color.fromARGB(255, 40, 109, 246),
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
  Align buildTitle(BuildContext context) {
    //change background color
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Text(
          '欢迎关岭',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Align buildCircle() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 405.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Align multiCircle() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 255.0),
        child: Container(
          height: 150.0,
          width: 150.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dartUI.Color.fromARGB(255, 33, 91, 240),
          ),
        ),
      ),
    );
  }

  Align buildFrostedGlass() {
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
              child: buildButton(),
            ),
          ),
        ),
      ),
    );
  }

  Column buildButton() {
    final theme = Theme.of(context);
    return Column(
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 50.0,
          child: FlatButton(
              onPressed: () {},
              color: theme.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )),
        ),
        FlatButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              'Sign up',
              style: TextStyle(color: theme.primaryColor, fontSize: 18.0),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildTitle(context),
          buildCircle(),
          multiCircle(),
          buildFrostedGlass(),
        ],
      ),
    );
  }
}

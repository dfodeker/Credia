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
        primaryColor: dartUI.Color.fromARGB(255, 238, 87, 41),
        scaffoldBackgroundColor: const dartUI.Color.fromARGB(255, 40, 109, 246),
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
        children: <Widget>[
          const Title(),
          const FrostedGlass(),
          const BigCircle(),
          const SmallCircle(),
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
                    MaterialPageRoute(builder: (context) => const Page2()));
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

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page 2',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
            TextButton(
              child: const Text('Back',
                  style: TextStyle(fontSize: 18.0, color: Colors.white)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            //text button
            TextButton(
              child: const Text('Next',
                  style: TextStyle(fontSize: 18.0, color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page 3',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
            TextButton(
              child: const Text('Back',
                  style: TextStyle(fontSize: 18.0, color: Colors.white)),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const Page2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:credia_app/widgets/card_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          //all other page components

          CardActions(),
          Rectangle(),
          Circle1(),
          RightRectangle(),
          LoadingImage(),
          Boxy(),
          DueDate(),
        ],
      ),
    );
  }
}

class Boxy extends StatelessWidget {
  const Boxy({Key? key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 225.0,
          width: 405.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 170.0,
              child: const Text(
                '     Grouped Transactions',
                style: const TextStyle(fontSize: 17.0),
              ),
            ),
            //a list tile with a leading icon
          ),
        ),
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 200.0, left: 15.0),
          child: Container(
            height: 150.0,
            width: 190.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 100.0,
                child: RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                      TextSpan(
                        text: '    Payment \n        due',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.3, fontWeightDelta: 1),
                      ),
                      const TextSpan(
                          text: '\n\n       To Netflix',
                          style: TextStyle(fontSize: 13.0)),
                    ])),
                //a list tile with a leading icon
              ),
            ),
          ),
        ));
  }
}

class RightRectangle extends StatelessWidget {
  const RightRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 200.0, right: 15.0),
        child: Container(
          height: 150.0,
          width: 190.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 100.0,
              child: RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                    TextSpan(
                      text: '    Savings \n    goal for',
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 1.3, fontWeightDelta: 1),
                    ),
                    const TextSpan(
                        text: '\n\n    My First Car',
                        style: TextStyle(fontSize: 13.0)),
                  ])),
              //a list tile with a leading icon
            ),
          ),
        ),
      ),
    );
  }
}

class Circle1 extends StatelessWidget {
  const Circle1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 275.0, right: 110.0),
        child: Container(
          height: 80.0,
          width: 80.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class DueDate extends StatefulWidget {
  const DueDate({Key? key}) : super(key: key);

  @override
  State<DueDate> createState() => _DueDateState();
}

class _DueDateState extends State<DueDate> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 170.0, right: 110.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 170.0,
            child: const Text(
              '   6\n days',
              style: const TextStyle(fontSize: 17.0, color: Colors.white),
            ),
          ),
        ),
        //a list tile with a leading icon
      ),
    );
  }
}

class LoadingImage extends StatelessWidget {
  const LoadingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Align(
      alignment: Alignment.bottomCenter,
      // ignore: prefer_const_constructors
      child: Padding(
        padding: const EdgeInsets.only(bottom: 275.0, left: 300.0),
        child: SizedBox(
          height: 80.0,
          width: 80.0,
          child: Column(
            children: <Widget>[Image.asset('assets/loading_80_re.png')],
          ),
        ),
      ),
    );
  }
}

class CardActions extends StatefulWidget {
  const CardActions({Key? key}) : super(key: key);

  @override
  State<CardActions> createState() => _CardActionsState();
}

class _CardActionsState extends State<CardActions> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.plus,
    FontAwesomeIcons.snowflake,
    FontAwesomeIcons.creditCard,
  ];
  // final List<String> _titles = [
  //   'Flights',
  //   'Hotels',
  //   'Cars',
  // ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Colors.blue
              : Color.fromARGB(255, 11, 79, 108),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index ? Colors.white : Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            CardSlider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 150.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

          Rectangle(),
          Circle1(),
          RightRectangle(),
          Circle2(),
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
        padding: const EdgeInsets.only(bottom: 20.0),
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
              child: Text(
                '     Grouped Transactions',
                style: TextStyle(fontSize: 17.0),
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
          padding: const EdgeInsets.only(top: 50.0, left: 15.0),
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
                      TextSpan(
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
        padding: const EdgeInsets.only(top: 50.0, right: 15.0),
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
                    TextSpan(
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
        padding: const EdgeInsets.only(bottom: 300.0, right: 110.0),
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

class Circle2 extends StatelessWidget {
  const Circle2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 300.0, left: 290.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                  'https://i.pinimg.com/564x/56/42/db/5642db06277d15680cd04f688877c8ea.jpg'),
            ),
          ),
        ));
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
        padding: const EdgeInsets.only(bottom: 190.0, right: 110.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 170.0,
            child: Text(
              '   6\n days',
              style: TextStyle(fontSize: 17.0, color: Colors.white),
            ),
          ),
        ),
        //a list tile with a leading icon
      ),
    );
  }
}

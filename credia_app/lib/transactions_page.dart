import 'package:credia_app/accounts_page.dart';
import 'package:flutter/material.dart';
import 'package:credia_app/widgets/graph_hq.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    var black = Colors.black;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transactions',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            color: black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          children: const <Widget>[
            BarChartSample2(),
            SizedBox(height: 22.0),
            BloxyLong(),
          ],
        ),
      ),
    );
  }
}

class BloxyLong extends StatelessWidget {
  const BloxyLong({Key? key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 255.0,
          width: 405.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 170.0,
              child: Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: Text(
                  'Grouped Transactions',
                  style: const TextStyle(fontSize: 17.0),
                ),
              ),
            ),
            //a list tile with a leading icon
          ),
        ),
      ),
    );
  }
}

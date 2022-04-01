import 'package:flutter/material.dart';

class VirtualCardsPage extends StatefulWidget {
  const VirtualCardsPage({Key? key}) : super(key: key);

  @override
  State<VirtualCardsPage> createState() => _VirtualCardsPageState();
}

class _VirtualCardsPageState extends State<VirtualCardsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Virtual cards'),
      ),
    );
  }
}

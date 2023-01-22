import 'package:bio_data/ModelClass.dart';
import 'package:flutter/material.dart';

class Print extends StatefulWidget {
  const Print({Key? key}) : super(key: key);

  @override
  State<Print> createState() => _PrintState();
}

class _PrintState extends State<Print> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(""),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WriteScreen extends StatefulWidget {
  static const String routeName = './screens/writeScreen';
  @override
  _WriteScreenState createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('write review!'),
    );
  }
}

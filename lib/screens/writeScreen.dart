import 'package:flutter/material.dart';

class WriteScreen extends StatefulWidget {
  static const routeName = './screens/writeScreen';
  @override
  _WriteScreenState createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('write screen'),
            RaisedButton(
              child: Text('돌아가기'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}

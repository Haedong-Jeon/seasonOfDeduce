import 'package:flutter/material.dart';
import 'package:seasonOfDeduce/screens/tabControlScreen.dart';
import './screens/writeScreen.dart';
import './screens/launchScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaunchScreen(),
      routes: {
        WriteScreen.routeName: (context) => WriteScreen(),
        TabControlSCreen.routeName: (context) => TabControlSCreen(),
      },
    );
  }
}

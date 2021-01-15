import 'package:flutter/material.dart';
import 'package:seasonOfDeduce/screens/writeScreen.dart';

class LaunchScreen extends StatelessWidget {
  void goToMainTap(BuildContext context) {
    Navigator.of(context).pushNamed(WriteScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 38, 46, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '추리의 계절',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              child: Text(
                '메인으로 이동',
              ),
              onPressed: () => goToMainTap(context),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import './Welcome/components/background.dart';

class LoggedInPage extends StatelessWidget {
  const LoggedInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: Text(
          "Welcome to Your Dashboard",
          style: TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}

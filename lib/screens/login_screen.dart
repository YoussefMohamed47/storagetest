import 'package:flutter/material.dart';
import 'package:storagetest/widgets/login_widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: LoginCompenonts(),
    );
  }
}

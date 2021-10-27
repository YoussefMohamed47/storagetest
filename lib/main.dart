import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storagetest/providers/sharedpref_provider.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => SharedPref()),
  ], child: MyApp()));
  //runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storage Test Save',
      home: LoginScreen(),
    );
  }
}

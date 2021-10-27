import 'package:flutter/material.dart';

class Tests extends StatelessWidget {
  final String? contval;
  Tests({required this.contval});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('s'),
      ),
      body: Center(
        child: Container(
          child: Text(contval!),
        ),
      ),
    );
  }
}

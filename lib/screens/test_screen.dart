import 'package:flutter/material.dart';

class Tests extends StatelessWidget {
  final String? contval;
  final String? contvalb;
  Tests({required this.contval, required this.contvalb});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('s'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(contval!),
              Text(contvalb!),
            ],
          ),
        ),
      ),
    );
  }
}

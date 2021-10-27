import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storagetest/providers/sharedpref_provider.dart';
import 'package:storagetest/screens/test_screen.dart';

class LoginCompenonts extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? test;

    return Form(
      child: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: test,
                textAlign: TextAlign.center,
                controller: _controller,
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              //printtt(_controller.text);
              //  await SharedPref.getinstance();

              // await Provider.of<SharedPref>(context, listen: false)
              //     .setcontroller(_controller.text);
              test = await Provider.of<SharedPref>(context, listen: false)
                  .setcontroller(_controller.text);
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Tests(contval: test == null ? 'welcome' : test!),
                ),
              );
            },
            icon: Icon(Icons.login),
          )
        ],
      ),
    );
  }
}

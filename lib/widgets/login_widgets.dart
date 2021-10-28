import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storagetest/providers/sharedpref_provider.dart';
import 'package:storagetest/screens/test_screen.dart';

class LoginCompenonts extends StatelessWidget {
  TextEditingController _controllera = TextEditingController();
  TextEditingController _controllerb = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String? intinalvalue1;
    String? intinalvalue2;
    return Form(
      child: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: intinalvalue1,
                textAlign: TextAlign.center,
                controller: _controllera,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: intinalvalue2,
                textAlign: TextAlign.center,
                controller: _controllerb,
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              intinalvalue1 =
                  await Provider.of<SharedPref>(context, listen: false)
                      .sharedprefsetandget(_controllera.text);
              intinalvalue2 =
                  await Provider.of<SharedPref>(context, listen: false)
                      .flsecstorage(_controllerb.text);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    _controllera.text = '';
                    _controllerb.text = '';
                    return Tests(
                        contval: intinalvalue1, contvalb: intinalvalue2);
                  },
                ),
              );
            },
            icon: Icon(Icons.login),
          ),
          // IconButton(
          //   onPressed: () async {
          //     intinalvalue2 =
          //         await Provider.of<SharedPref>(context, listen: false)
          //             .flsecstorage(_controllerb.text);
          //   },
          //   icon: Icon(
          //     Icons.login,
          //     color: Colors.red,
          //   ),
          // ),
        ],
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void showAlert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          title: const Text('Alert title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('This is a content of the alert'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.red),
                )),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  void showAlertIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Hello'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('This is a content of the alert'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.red),
                )),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Platform.isIOS ? showAlertIOS(context) : showAlert(context),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Show alert',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

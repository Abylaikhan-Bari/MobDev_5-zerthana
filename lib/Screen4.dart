import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 4'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: const Text('Select an option'),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        // Do something
                      },
                      child: const Text('Option 1'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        // Do something
                      },
                      child: const Text('Option 2'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        // Do something
                      },
                      child: const Text('Option 3'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Open SimpleDialog'),
        ),
      ),
    );
  }
}

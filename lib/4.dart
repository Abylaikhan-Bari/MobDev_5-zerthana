import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Screen 4'),
      ),*/
      body: Center(
        child: Tooltip(
          message: 'Open SimpleDialog',
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SimpleDialog(
                    title: const Text('Salem'),
                    children: [
                      SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Anau-mynau'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Random words'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Sau bol!'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Open SimpleDialog'),
          ),
        ),
      ),
    );
  }
}

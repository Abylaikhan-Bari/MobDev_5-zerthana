import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Screen 6'),
      ),*/
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              Size(200, 60), // Set the desired size of the button
            ),
          ),
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('Hello, this is a snackbar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some action to undo the change done by the snackbar
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Screen 5'),
      ),*/
      body: Center(
        child: Tooltip(
          message: 'Delete item',
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                Size(200, 60), // Set the desired size of the button
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Delete item?'),
                    content: Text('Are you sure you want to delete this item?'),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Delete'),
                        onPressed: () {
                          // Delete item logic here
                          Navigator.of(context).pop();

                          // Show SnackBar
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Item deleted'),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show Delete Dialog'),
          ),
        ),
      ),
    );
  }
}

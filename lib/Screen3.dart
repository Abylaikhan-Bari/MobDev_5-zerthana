import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key('myKey$index'),
            direction: DismissDirection.up,
            onDismissed: (DismissDirection direction) {
              // Do something when dismissed
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            child: ListTile(
              title: Text('Swipe to dismiss $index'),
            ),
          );
        },
      ),
    );
  }
}

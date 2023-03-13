import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  List<String> items = ['Birinshi', 'Ekinshi', 'Ushinshi', 'Tortinshi', 'Besinshi', 'Altynshy', 'Jetinshi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Screen 3'),
      ),*/
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];

            return Dismissible(
              key: Key(item),
              direction: DismissDirection.down,
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$item dismissed'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        setState(() {
                          items.insert(index, item);
                        });
                      },
                    ),
                  ),
                );
              },
              child: Center(
                child: Container(
                  height: 100,
                  width: 400,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigoAccent,
                  ),
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(item),
                  ),
                ),
              ),
              background: Container(
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

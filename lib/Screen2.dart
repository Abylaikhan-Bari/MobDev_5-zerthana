import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  Future<void> _pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2024),
    );
    if (pickedDate != null) {
      print('Selected date: $pickedDate');
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      print('Selected time: $pickedTime');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _pickDate,
              child: Text('Pick a date'),
            ),
            ElevatedButton(
              onPressed: _pickTime,
              child: Text('Pick a time'),
            ),
            Text('Async widgets:'),
            FutureBuilder(
              future: Future.delayed(Duration(seconds: 2), () => DateTime.now()),
              builder: (BuildContext context, AsyncSnapshot<DateTime> snapshot) {
                if (snapshot.hasData) {
                  return Text('Current time: ${snapshot.data}');
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool _checkBoxValue1 = false;
  bool _checkBoxValue2 = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  double _sliderValue1 = 0.0;
  double _sliderValue2 = 0.0;
  int _radioValue1 = 0;
  int _radioValue2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Screen 1'),
      ),*/
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _checkBoxValue1,
              onChanged: (bool? value) {
                setState(() {
                  _checkBoxValue1 = value!;
                });
              },
            ),
        Text('Checkbox 1'),
      ],
    ),
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Checkbox(
            value: _checkBoxValue2,
            onChanged: (bool? value) {
              setState(() {
              _checkBoxValue2 = value!;
              });
            },
          ),
         Text('Checkbox 2'),
          ],
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Switch(
            value: _switchValue1,
            onChanged: (bool value) {
              setState(() {
              _switchValue1 = value;
              });
             },
            ),
         Text('Switch 1'),
          ],
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Switch(
            value: _switchValue2,
            onChanged: (bool value) {
                setState(() {
                _switchValue2 = value;
                });
              },
            ),
            Text('Switch 2'),
           ],
        ),
        Slider(
        value: _sliderValue1,
        onChanged: (double value) {
            setState(() {
            _sliderValue1 = value;
            });
          },
          min: 0,
          max: 100,
          label: 'Slider 1: ${_sliderValue1.toInt()}',
        ),
        Slider(
        value: _sliderValue2,
          onChanged: (double value) {
              setState(() {
              _sliderValue2 = value;
              });
           },
          min: 0,
          max: 100,
          label: 'Slider 2: ${_sliderValue2.toInt()}',
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Radio(
        value: 0,
        groupValue: _radioValue1,
          onChanged: (int? value) {
              setState(() {
              _radioValue1 = value!;
              });
          },
        ),
        Text('Option 1'),
        Radio(
        value: 1,
        groupValue: _radioValue1,
        onChanged: (int? value) {
            setState(() {
            _radioValue1 = value!;
            });
          },
        ),
        Text('Option 2'),
        ],
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Radio(
        value: 0,
        groupValue: _radioValue2,
        onChanged: (int? value) {
            setState(() {
            _radioValue2 = value!;
            });
          },
        ),
        Text('Option 1'),
        Radio
          (
          value: 1,
          groupValue: _radioValue2,
          onChanged: (int? value) {
            setState(() {
              _radioValue2 = value!;
            });
          },
        ),
          Text('Option 2'),
        ],
        ),
            SizedBox(height: 20),
            Text('Slider 1 Value: ${_sliderValue1.toStringAsFixed(2)}'),
            SizedBox(height: 10),
            Text('Slider 2 Value: ${_sliderValue2.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
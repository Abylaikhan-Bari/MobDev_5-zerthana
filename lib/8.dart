import 'package:flutter/material.dart';

class Screen8 extends StatefulWidget {
  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  bool _isFirst = true;
  double _dragPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails details) {
          setState(() {
            _dragPosition += details.delta.dy;
          });
        },
        onVerticalDragEnd: (DragEndDetails details) {
          setState(() {
            if (_dragPosition > 50 && !_isFirst) {
              _isFirst = true;
            } else if (_dragPosition < -50 && _isFirst) {
              _isFirst = false;
            }
            _dragPosition = 0.0;
          });
        },
        child: Center(
          child: AnimatedCrossFade(
            duration: Duration(seconds: 1),
            sizeCurve: Curves.bounceIn,
            firstChild: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'First Container',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            secondChild: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Second Container',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            crossFadeState:
            _isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isFirst = !_isFirst;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

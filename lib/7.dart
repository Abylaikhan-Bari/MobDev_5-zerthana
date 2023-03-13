import 'package:flutter/material.dart';

class Screen7 extends StatefulWidget {
  @override
  _Screen7State createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  bool _isAnimatedContainerExpanded = false;
  bool _isAnimatedCrossFadeFirst = true;
  bool _isTextBigger = false;
  bool _isTextColorChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Screen 7'),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: _isAnimatedContainerExpanded ? 200 : 100,
              width: _isAnimatedContainerExpanded ? 200 : 100,
              color: _isAnimatedContainerExpanded ? Colors.cyan: Colors.purple,
              child: Center(
                child: Text(
                  'Animated Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                height: 500,
                width: 200,
                color: Colors.purple,
                /*decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),*/
                child: Center(
                  child: Text(
                    'Purple',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              secondChild: Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
                /*decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),*/
                child: Center(
                  child: Text(
                    'Cyan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              crossFadeState: _isAnimatedCrossFadeFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isTextBigger = !_isTextBigger;
                  _isTextColorChanged = !_isTextColorChanged;
                });
              },
              child: AnimatedDefaultTextStyle(
                duration: Duration(seconds: 1),
                style: TextStyle(
                  fontSize: _isTextBigger ? 32 : 24,
                  fontWeight: FontWeight.bold,
                  color: _isTextColorChanged ? Colors.purpleAccent : Colors.blue,
                  // Set the color to purpleAccent if _isTextColorChanged is true, else set it to blue
                ),
                child: Text('Animated Text'),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isAnimatedContainerExpanded = !_isAnimatedContainerExpanded;
            _isAnimatedCrossFadeFirst = !_isAnimatedCrossFadeFirst;
            _isTextBigger = !_isTextBigger;
            _isTextColorChanged = !_isTextColorChanged;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Animations switched!'),
              action: SnackBarAction(
                label: 'UNDO',
                onPressed: () {
                  setState(() {
                    _isAnimatedContainerExpanded = !_isAnimatedContainerExpanded;
                    _isAnimatedCrossFadeFirst = !_isAnimatedCrossFadeFirst;
                  });
                },
              ),
            ),
          );
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

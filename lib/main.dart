import 'package:flutter/material.dart';
import 'package:besinshi_lab/Screen1.dart';
import 'package:besinshi_lab/Screen2.dart';
import 'package:besinshi_lab/Screen3.dart';
import 'package:besinshi_lab/Screen4.dart';
import 'package:besinshi_lab/Screen5.dart';
import 'package:besinshi_lab/Screen6.dart';
import 'package:besinshi_lab/Screen7.dart';
import 'package:besinshi_lab/Screen8.dart';
import 'package:besinshi_lab/Screen9.dart';
import 'package:besinshi_lab/Screen10.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '5-zerthana',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
          bottom: TabBar(
            tabs: [
              Tab(text: '1'),
              Tab(text: '2'),
              Tab(text: '3'),
              Tab(text: '4'),
              Tab(text: '5'),
              Tab(text: '6'),
              Tab(text: '7'),
              Tab(text: '8'),
              Tab(text: '9'),
              Tab(text: '10'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen1());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen2());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen3());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen4());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen5());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen6());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen7());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen8());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen8());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen9());
                }
              },
            ),
            Navigator(
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return MaterialPageRoute(builder: (context) => Screen10());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}


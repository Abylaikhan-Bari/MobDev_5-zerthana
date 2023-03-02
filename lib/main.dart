import 'package:flutter/material.dart';
import 'package:besinshi_lab/1.dart';
import 'package:besinshi_lab/2.dart';
import 'package:besinshi_lab/3.dart';
import 'package:besinshi_lab/4.dart';
import 'package:besinshi_lab/5.dart';
import 'package:besinshi_lab/6.dart';
import 'package:besinshi_lab/7.dart';
import 'package:besinshi_lab/8.dart';
import 'package:besinshi_lab/9.dart';
import 'package:besinshi_lab/10.dart';

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
  final List<Tab> myTabs = [
    Tab(text: '1'),
    Tab(text: '2'),
    Tab(text: '3'),
    Tab(text: '4'),
    Tab(text: '5'),
    Tab(text: '6'),
    Tab(text: '7'),
    Tab(text: '8'),
    /*Tab(text: '9'),
    Tab(text: '10'),*/
  ];

  final List<Widget> myScreens = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
    Screen6(),
    Screen7(),
    Screen8(),
    /*Screen9(),
    Screen10(),*/
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('5-zerthana'),
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myScreens,
        ),
      ),
    );
  }
}


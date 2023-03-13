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
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      title: '5-zerthana',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Tab> myTabs = [
    Tab(text: 'Checkbox & etc.'),
    Tab(text: 'TimePicker'),
    Tab(text: 'Dissmissable'),
    Tab(text: 'SimpleDialog'),
    Tab(text: 'DeleteDialog'),
    Tab(text: 'Snackbar'),
    Tab(text: 'AnimatedContainer'),
    Tab(text: 'AnimatedCrossFade'),
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


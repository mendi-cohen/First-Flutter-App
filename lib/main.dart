import 'package:flutter/material.dart';
import './myfulwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Container(  child:GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 2,
    children: [MyFullWidget( count: 15), MyFullWidget( count:10), MyFullWidget( count:0), MyFullWidget(), MyFullWidget(), MyFullWidget()],



    )));
  }
}


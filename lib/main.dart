import 'package:flutter/material.dart';
import 'package:my_flutter_app/myDiv.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(home:HomeWidget());
  }
}

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(bottom:AppBar(title: MyDiv(text:"appBar" ,color:"green"))),
      body: Container(
        height: 1000,
        width: 600,
        

        child: Column
        (children: [
          Row(children: [
          MyDiv(text: 'Hello'),
         Expanded(child: MyDiv(text: "Hello" ,color:"red")),
          MyDiv(text: "Hello"),
          ],),

          Row(children: [
          MyDiv(text: 'Hello'),
          Expanded(child: MyDiv(text: "Hello" ,color:"red")),
          MyDiv(text: "Hello"),
          ],),

          Row(children: [
          MyDiv(text: 'Hello'),
          Expanded(child: MyDiv(text: "Hello" ,color:"red")),
          MyDiv(text: "Hello"),
          ],)
         
        ],
        ),
      ),
      
    );
  }


}
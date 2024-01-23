import 'package:flutter/material.dart';

class MyDiv extends StatelessWidget{
  final text;
  final String color;


Map<String , Color>colorMap = {
"red":Colors.red,
"yellow":Colors.yellow,
"green": Colors.green,
};
MyDiv({this.text, this.color = "yellow" ,super.key});

@override

Widget build(BuildContext build ){
return Container(
  margin: EdgeInsets.all(10),
child: Text(text) ,
padding: EdgeInsets.all(10),
color: colorMap[color],
);
}
}
import 'package:flutter/material.dart';


class MyExtentBox extends StatelessWidget {
  final text;
  final String color;
Map<String , Color>colorMap = {
"red":Colors.red,
"yellow":Colors.yellow,
"green": Colors.green,
"blue": Colors.blue,
};
MyExtentBox({this.text = "hi", this.color = "yellow" ,super.key});

@override
Widget build(BuildContext context) {
return Container(
  height: 100,
  width: 100,
  color: Colors.grey,
  child: Card(
    color: colorMap[color],
    child: Text(text)
),
  
);
}
}
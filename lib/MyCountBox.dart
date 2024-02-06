import 'package:flutter/material.dart';



class MyCountBox extends StatelessWidget {
 
  final String color;
  final image;
  final text;

  Map<String, Color> colorMap = {
    "red": Colors.red,
    "yellow": Colors.yellow,
    "green": Colors.green,
    "blue": Colors.blue,
  };
  MyCountBox({this.color = "yellow",this.text = "hi" , this.image = "https://pic1.calcalist.co.il/PicServer2/20122005/344733/Untitled-1_l.jpg" , super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.grey,
      child: Card(color: colorMap[color],child: Image.network(image, fit: BoxFit.fill)),
    );
  }
}

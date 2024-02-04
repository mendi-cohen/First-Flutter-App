import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:
       Column(children:  [ Container(
          width:400,
          height: 200,
          child: ListView(
          scrollDirection: Axis.horizontal,
          children:  [
            MyBox(text: "number-1",), MyBox(text: "number-1",), MyBox(text: "number-1",),
           MyBox(text: "number-1",), MyBox(text: "number-1",), MyBox(text: "number-1",),
            MyBox(text: "number-1",), MyBox(text: "number-1",), MyBox(text: "number-1",), 
             MyBox(text: "number-1",), MyBox(text: "number-1",), MyBox(text: "number-1",),
             MyBox(text: "number-1",), MyBox(text: "number-1",), MyBox(text: "number-1",),
             MyBox(text: "number-1",), MyBox(text: "number-1",), MyBox(text: "number-1",),],)) ,
             
         Container(
          width:400,
           height: 200,
          child: ListView(
           
          scrollDirection: Axis.vertical,
          children:  [
            MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",),
           MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",),
            MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",), 
             MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",),
             MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",),
             MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",), MyBox(text:"number - 2 " ,color: "green",),],
        )),
        
           Container(
          width:400,
           height: 200,
          child: GridView.count(
            crossAxisCount: 1,
          scrollDirection: Axis.horizontal,
          children:  [
            MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",),
           MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",),
            MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",), 
             MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",),
             MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",),
             MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",), MyBox(text:"number - 3 " ,color: "blue",),],
        )), 
        
              Container(
          width:400,
           height: 200,
          child: GridView.count(
            crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children:  [
            MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",),
           MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",),
            MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",), 
             MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",),
             MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",),
             MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",), MyBox(text:"number - 4 " ,color: "red",),],
        )), ], ))) ;     
  }

}



class MyBox extends StatelessWidget {
  final text;
  final String color;
Map<String , Color>colorMap = {
"red":Colors.red,
"yellow":Colors.yellow,
"green": Colors.green,
"blue": Colors.blue,
};
MyBox({this.text = "hi", this.color = "yellow" ,super.key});

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

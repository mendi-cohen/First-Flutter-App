import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      
    );
  }
}


class MyHome extends StatelessWidget {
  MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Center( child: Text("session - 6"))),
      body: Container(
        height:600,
          child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: [MyBox(BoxMargin:10, textValue: "hi you",), MyBox(BoxMargin:20,newText: "hohoy") 
        , MyBox(BoxMargin: 40,newText: "hohoy"), MyBox(BoxMargin:50 ,newText: "hohoy"), 
        MyBox(BoxMargin:60 ,newText: "hohoy"), MyBox(BoxMargin: 50,newText: "hohoy"), MyBox(BoxMargin:18 ,newText: "hohoy"), MyBox(BoxMargin: 15,newText: "hohoy")],
      )),
    );
  }
}

class MyBox extends StatefulWidget {
  int BoxMargin;
  String textValue;
  String newText;
  MyBox({super.key, this.BoxMargin = 20 , this.textValue = "" , this.newText = ''});
  @override
  State<MyBox> createState() => _MyBoxState();
}
class _MyBoxState extends State<MyBox> {
  int _BoxMargin = 30;
  String _textValue = '';
  String newText = '';
  @override
  void initState() {
    super.initState();
    _BoxMargin = widget.BoxMargin;
    _textValue = widget.textValue;
  }

  void changeState() {
    setState(() {
      _BoxMargin++;
      _textValue = widget.newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.amber, child: GestureDetector(
        onTap: () => changeState(),
        child: Card(
      margin: EdgeInsets.all(_BoxMargin.toDouble()),    
      color: Colors.blue,
      child:Card(child: Center(child:Text("$_textValue $_BoxMargin"))))));
  }
}
